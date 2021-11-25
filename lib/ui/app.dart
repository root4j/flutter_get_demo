import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/converter.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Converter BinToDec And DecToBin"),
        ),
        body: const Center(
          child: Converter(),
        ),
      ),
    );
  }
}