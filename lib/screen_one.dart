import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';


class ScreenOne extends StatefulWidget {

   ScreenOne({ super.key});


  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One" + Get.arguments['name']),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: TextButton(
                onPressed: () {
                    Get.back();
                },
                child: Text("Go Back"),
              ))
        ],
      ),
    );
  }
}
