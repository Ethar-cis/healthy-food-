import 'package:final_pro/menu.dart';
import 'package:final_pro/order.dart';
import 'package:flutter/material.dart';

class person extends StatefulWidget {
  const person ({Key? key}) : super(key: key);
  
  @override
  State<person > createState() => _person ();

}
  
class _person extends State<person > {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
       resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
     
       body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: 
          
          Column(children: [Row(children: [
             Container(
                    margin: const EdgeInsets.only( left: 10,top: 5),
                  
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(80)
                    ),
                    child: IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const menu()));
                    }, 
                    icon: Icon(Icons.navigate_before,color: Colors.green[900],size: 40,)),
                    
                  ),
          ],),
          
           
            Container(
              margin: const EdgeInsets.only(left: 90,top: 10),
                    height: 40,
                    width:double.infinity,
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(80)
                    ),
                    child: Text("MY ACCOUNT" ,style:TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold,color: Colors.green[900]),),
            ),
                     
            const SizedBox(height: 10),
            Container(
              child: Image.asset("images/log22.jpg",width: 250,height: 180,),
            ),
           const SizedBox(height: 40),
           Container(
            padding: const EdgeInsets.only(left: 80),
            child:Row(children: [
              Icon(Icons.shop_2_outlined,size: 40,color: Colors.green[900]),
              const SizedBox(width: 20,),
              TextButton(onPressed: () { 
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> const order()));
               },
              child: Text("My Order",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900])),)
            ],)
              
           ),
                 const SizedBox(height: 30),
           
           Container(
            padding: const EdgeInsets.only(left: 80),
            child:Row(children: [
              Icon(Icons.help_center,size: 40,color: Colors.green[900]),
              const SizedBox(width: 20,),
              TextButton(onPressed: () {  },
              child: Text("Help Center",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900])),)
            ],)
              
           ),
            const SizedBox(height: 20),
           Container(
            padding: const EdgeInsets.only(left: 80),
            child:Row(children: [
              Icon(Icons.payment,size: 40,color: Colors.green[900]),
              const SizedBox(width: 20,),
              TextButton(onPressed: () {  },
              child: Text("Payment",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900])),)
            ],)
              
           ),
                
              ])
            ),
           

    ));


  }

}