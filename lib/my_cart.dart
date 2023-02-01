import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_card_app/my_controller.dart';
import 'package:shopping_card_app/total_page.dart';

class MyCart extends StatelessWidget {
   MyCart({Key? key}) : super(key: key);
  final MyController c= Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart App",
        style: TextStyle(fontWeight:FontWeight.w300),),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text("Books",style: TextStyle(
                  fontSize: 30,
                  color:Colors.amber,
                ),),
                Expanded(child: Container()),// to make space between text and icon button
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color:Colors.redAccent
                    ),
                    child: IconButton(onPressed:()=>c.increment(), icon: Icon(Icons.add,color: Colors.white,),
                    )
                ),
                const SizedBox(width: 20,),
                Obx(() => Text("${c.books.toString()}",
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                )
                ),

                const SizedBox(width: 30,),
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color:Colors.redAccent
                    ),
                    child: IconButton(onPressed:()=>c.decrement(),
                      icon: const Icon(Icons.remove,color: Colors.white,),)
                )
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Text("Pens",style: TextStyle(
                  fontSize: 30,
                  color:Colors.amber,
                ),),
                Expanded(child: Container()),// to make space between text and icon button
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color:Colors.redAccent
                    ),
                    child: IconButton(onPressed:()=>c.incrementpens(), icon: Icon(Icons.add,color: Colors.white,),
                    )
                ),
                SizedBox(width: 20,),
                Obx(() => Text("${c.pens.toString()}",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )
                ),

                SizedBox(width: 30,),
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color:Colors.redAccent
                    ),
                    child: IconButton(onPressed:()=>c.decrementpens(),
                      icon: Icon(Icons.remove,color: Colors.white,),)
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(child: Container()),
                Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.deepPurpleAccent,
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                      ),
                      onPressed: ()=>Get.to(()=>TotalPage()),
                      child: Text("Total",style: TextStyle(
                        fontSize: 30,
                        color:Colors.white,
                      ),)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
