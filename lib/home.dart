
import 'package:final_pro/signin.dart';
import 'package:flutter/material.dart';
import 'dart:async';






class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);
  
  @override
  State<home> createState() => _home();
  
  

}
  
class _home extends State<home> {
   @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => const signin())));
   }


  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold( backgroundColor: Colors.white,


    body: Stack(children:[ SizedBox(
        width: devicesize.width,
        height: devicesize.height,
        child: Image.asset(
          "images/food.jpg",
          width: devicesize.width,
          height: devicesize.height,
        ),
    )]
 
       ),
    
  ));

      
}
}