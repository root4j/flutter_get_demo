import 'package:flutter/material.dart';
import 'package:flutter_get_demo/domain/controllers/converter_controller.dart';
import 'package:get/get.dart';

import 'ui/app.dart';

void main() {
  Get.lazyPut<ConverterController>(() => ConverterController());
  runApp(const App());
} 
