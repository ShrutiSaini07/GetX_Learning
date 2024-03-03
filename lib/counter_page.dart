import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_learning/counter_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final CounterClass controller = Get.put(CounterClass());
  //int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      body: Center(child: Obx(() {
        return Text(controller.counter.toString(), style: TextStyle(fontSize: 60),);
      })),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.increamentCounter();
      }),
    );
  }
}
