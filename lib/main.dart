import 'package:customersupportmodule/core/constanse/appthemes.dart';
import 'package:customersupportmodule/firebase_options.dart';
import 'package:customersupportmodule/modules/HelpAndFAQsView/view/screens/HelpAndFAQsView_screen.dart';
import 'package:customersupportmodule/modules/chatservices/bindings/chatbinding.dart';
import 'package:customersupportmodule/modules/cutomerservice/view/screens/cutomerservice_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'modules/chatservices/view/screens/chatservise_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => CutomerserviceScreen()),
        GetPage(name: '/helpAndFAQs', page: () => HelpAndFAQsView()),
        GetPage(name: '/chatServices', page: () => ChatScreen()),
      ],
      initialBinding: ChatBinding(),

      title: 'Customer Support',
      theme: AppThemes.appLightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
