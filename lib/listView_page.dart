import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

import 'counter_controller.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {

  CounterClass controller  = Get.put(CounterClass());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: controller.fruitName.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: (){

                if(controller.tempFruit.contains(controller.fruitName[index].toString())){
                  controller.removeToFavourite(controller.fruitName[index].toString());
                }else{
                  controller.addToFavourite(controller.fruitName[index].toString());
                }
              },
              title: Text(controller.fruitName[index].toString()),
              trailing: Obx(() => Icon(
                Icons.favorite,color: controller.tempFruit.contains(controller.fruitName[index].toString())? Colors.red : Colors.white,),)
            ),
          );
        },
      ),
    );
  }
}
