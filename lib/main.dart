import 'package:flutter/material.dart';
import 'package:lab4marandici/initializer/di-initializer.dart';
import 'package:lab4marandici/presentation/app.dart';

Future<void> main() async {
  await DIInitializer.init();
  runApp(App());
}