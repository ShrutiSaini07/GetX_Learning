import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_learning/screen_one.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator Learning using GetX"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: TextButton(
            onPressed: () {
              Get.to(ScreenOne(),arguments:{'name': 'Shruti Saini'});
              //Get.toNamed('/screenOne', arguments: {'name': 'Shruti Saini'});
                }, child: Text("Go to next Screen"),
          )),
        ],
      ),
    );
  }
}
