import 'package:customersupportmodule/core/appthemes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Customer Support Module',
      theme: AppThemes.appDarkTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Customer Support Module')),
        body: Center(
          child: Text(
            'Welcome to the Customer Support Module',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
      ),
    );
  }
}
