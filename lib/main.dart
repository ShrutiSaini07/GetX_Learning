import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/homeWork.dart';
import 'package:getx_learning/home_page.dart';
import 'package:getx_learning/image_picker_page.dart';
import 'package:getx_learning/language_page.dart';
import 'package:getx_learning/listView_page.dart';
import 'package:getx_learning/navigator_page.dart';
import 'package:getx_learning/screen_one.dart';

import 'counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      locale: Locale('en' , 'US'),
      fallbackLocale: Locale('en','US'),
      translations: Languages(),
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ImagePickerScreen(),
      getPages: [
        GetPage(name: '/', page: ()=> HomeScreen()),
        GetPage(name: '/navigatorPage', page: ()=> NavigatorScreen()),
        GetPage(name: '/screenOne', page: ()=> ScreenOne()),
      ],
    );
  }
}
