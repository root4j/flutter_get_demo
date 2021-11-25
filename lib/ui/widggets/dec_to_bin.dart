import 'package:flutter/material.dart';
import 'package:flutter_get_demo/domain/controllers/converter_controller.dart';
import 'package:get/get.dart';

class DecimalToBinary extends StatelessWidget {
  const DecimalToBinary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Obtener Controlador GetX
    ConverterController ct = Get.find();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.centerRight,
          child: Obx(
            () => Text(
              ct.binary,
              textAlign: TextAlign.right,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.centerRight,
          child: Obx(
            () => Text(
              ct.decimal,
              textAlign: TextAlign.right,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KeyPadButton(1, context, ct),
              KeyPadButton(2, context, ct),
              KeyPadButton(3, context, ct)
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KeyPadButton(4, context, ct),
              KeyPadButton(5, context, ct),
              KeyPadButton(6, context, ct)
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KeyPadButton(7, context, ct),
              KeyPadButton(8, context, ct),
              KeyPadButton(9, context, ct)
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KeyPadButton(0, context, ct),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  color: Theme.of(context).colorScheme.secondaryVariant,
                  child: const Text(
                    "Reset",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  onPressed: () => ct.reset(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget KeyPadButton(number, context, ConverterController ct) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          color: Theme.of(context).primaryColor,
          child: Text(
            number.toString(),
            style: const TextStyle(color: Colors.white),
          ),
          onPressed: () => ct.updateDecimal(number),
        ),
      ),
    );
  }
}
