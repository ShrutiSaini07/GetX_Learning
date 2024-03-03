import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterClass extends GetxController{
  RxInt counter = 1.obs;
  Rx<Color> colorChange =  Rx<Color>(Colors.pink);
  RxDouble opacity = 0.4.obs;

  RxList<String> fruitName = ['Orange' , 'Grapes' , 'Mango' , 'Banana'].obs;
  RxList tempFruit = [].obs;


  addToFavourite(String value){
    tempFruit.add(value);
  }


  removeToFavourite(String value){
    tempFruit.remove(value);
  }

  increamentCounter(){
    counter.value++;
    print(counter.value);
  }

  colorContainer(){
    colorChange.value = (colorChange.value == Colors.pink) ? Colors.green : Colors.pink;
  }

  setOpacity(double value){
    opacity.value = value;
  }
}