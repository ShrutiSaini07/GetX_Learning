import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';

class HomeWorkScreen extends StatefulWidget {
  const HomeWorkScreen({super.key});

  @override
  State<HomeWorkScreen> createState() => _HomeWorkScreenState();
}

class _HomeWorkScreenState extends State<HomeWorkScreen> {
  final CounterClass colorController = Get.put(CounterClass());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeWork"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Container(
                width: 200,
                height: 200,
                color: colorController.colorChange.value,
               ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          colorController.colorContainer();
        },
      ),
    );
  }
}
