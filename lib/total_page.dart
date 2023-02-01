import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_card_app/my_cart.dart';
import 'package:shopping_card_app/my_controller.dart';

class TotalPage extends StatelessWidget {
  TotalPage({Key? key}) : super(key: key);
  final MyController c= Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Total items",
              style: TextStyle(
                fontSize: 30,
                color: Colors.deepPurpleAccent,
              ),
            ),
            const SizedBox(height: 20,),
            Obx(() => Text(c.sum.toString(),
              style: const TextStyle(
                fontSize: 30,
                color: Colors.redAccent,
              ),
            )
            ),
            const SizedBox(height: 20,),
            Container(
              width: 180,
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
                  onPressed: ()=>Get.to(()=>MyCart()),
                  child: const Text("Go Back",style: TextStyle(
                    fontSize: 30,
                    color:Colors.white,
                  ),)),
            )
          ],
        ),
      ),
    );
  }
}
