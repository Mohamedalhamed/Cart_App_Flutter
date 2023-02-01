import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController{
var books = 0.obs;
var pens = 0.obs;
int get sum=>books.value+pens.value;
increment(){
  books.value++;
}
decrement(){
  if (books.value<=0){
    Get.snackbar("Buying Books", "Can be zero or less than",backgroundColor: Colors.amber,
      icon:const Icon(Icons.add_alert),
      barBlur: 20,
      isDismissible:true,
      duration: const Duration(seconds: 3),
    );
  }else{
    books.value--;
  }
}
incrementpens(){
  pens.value++;
}
decrementpens(){
  if (pens.value<=0){
    Get.snackbar("Buying pens", "Can be zero or less than",backgroundColor: Colors.amber,
      icon:const Icon(Icons.add_alert),
      barBlur: 20,
      isDismissible:true,
      duration: const Duration(seconds: 3),
    );
  }else{
    pens.value--;
  }
}
}