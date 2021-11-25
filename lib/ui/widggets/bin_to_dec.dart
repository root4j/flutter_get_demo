import 'package:flutter/material.dart';
import 'package:flutter_get_demo/domain/controllers/converter_controller.dart';
import 'package:get/get.dart';

class BinaryToDecimal extends StatelessWidget {
  const BinaryToDecimal({Key? key}) : super(key: key);

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
          flex: 4,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KeyPadButton(const Key('bin2Dec1'), 1, context, ct),
              KeyPadButton(const Key('bin2Dec0'), 0, context, ct)
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
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
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget KeyPadButton(key, number, context, ConverterController ct) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          key: key,
          color: Theme.of(context).primaryColor,
          child: Text(
            number.toString(),
            style: const TextStyle(color: Colors.white),
          ),
          onPressed: () => ct.updateBinary(number),
        ),
      ),
    );
  }
}
