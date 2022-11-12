
import 'package:final_pro/about.dart';
import 'package:final_pro/editinfo.dart';
import 'package:final_pro/home.dart';
import 'package:final_pro/kids.dart';
import 'package:final_pro/kidsub.dart';
import 'package:final_pro/order.dart';
import 'package:final_pro/over.dart';
import 'package:final_pro/oversub.dart';
import 'package:final_pro/person.dart';
import 'package:final_pro/youngfood.dart';
import 'package:final_pro/youngsub.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'BodySubscription.dart';


class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);
  
  @override
  State<menu> createState() => _menu();

}
class _menu extends State<menu> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final int _page= 0;
  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: Scaffold( backgroundColor: Colors.green[900],
      appBar: AppBar(
         foregroundColor: Colors.white,
        backgroundColor: Colors.green[900],
         centerTitle: true,
      bottomOpacity: 0.0,
      elevation: 0.0,
        ),
       drawer:Drawer(child:
         ListView(
      padding: const EdgeInsets.all(10),
      children: [
        const Padding(padding:EdgeInsets.only(top: 10)),
        DrawerHeader(
          decoration: BoxDecoration(
            
            color: Colors.green[900],
          ),
          child:
          const Text(
            'Home',textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
         ListTile(
          leading: const Icon(Icons.info,size: 30),
          title:  TextButton(style:TextButton.styleFrom(textStyle:TextStyle(fontSize:20,color:Colors.green[900]),),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const editinfo()));
      }, 
      child:Text("Edit Information",style: TextStyle(fontSize: 20,color: Colors.green[900]),)),
        ),
        ListTile(
          leading: const Icon(Icons.help,size: 30,),
          title:  TextButton(style:TextButton.styleFrom(textStyle:TextStyle(fontSize:15,color:Colors.green[900]),),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const about()));
      }, 
      child:Text("About Us",style: TextStyle(fontSize: 20,color: Colors.green[900]),)),
        ),
        ListTile(
          leading: const Icon(Icons.logout,size: 30),
          title:  TextButton(style:TextButton.styleFrom(textStyle:TextStyle(fontSize:15,color:Colors.green[900]),),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const home()));
      }, 
      child:Text("LogOut",style: TextStyle(fontSize: 20,color: Colors.green[900]),)),
        ),
      ],
  ))  ,

      
      
  body: 
        Center(
    child: (Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       
            Container(
              padding: const EdgeInsets.only(left: 50,top: 10),
              width: double.infinity,
              height: 97,
              color: Colors.green[900],
              child: const Text("Welcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white)),
           
            ),
         Stack(children: [
          
          Container(
             padding: const EdgeInsets.only(left: 30),
             width: MediaQuery.of(context).size.width,
             height: 505.3,
             decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60)),
                    color: Colors.white
                    ),
            ),
            Container(
              width: 135,
              height: 150,
                margin: const EdgeInsets.only(top: 60,left: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [BoxShadow(
                      color: Color.fromARGB(255, 42, 81, 43),
                      blurRadius: 30,
                      offset: Offset(0,10)
                    )],
                      color: Colors.white,
                    ),
                   
          
         ),
         Container(
          padding: const EdgeInsets.only(left: 50,top: 90),
          child: TextButton(child: Text("KidsFood",
                   style: TextStyle(color: Colors.green[900],fontWeight: FontWeight.bold,fontSize: 18),),
                   onPressed: (){
                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>  const BodySubscription(
                                    pages: [
                                     kids(),
                                     order(),
                                      menu(),
                                      person(),
                                    ],
                                  ),));
                   },),
         ),
        
          Container(
      margin: const EdgeInsets.only(top: 130,left: 50),
      
          child: TextButton(onPressed: () { 
            Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>  const BodySubscription(
                                    pages: [
                                     kidsub(),
                                     order(),
                                      menu(),
                                      person(),
                                    ],
                                  ),));
           },
          child:Text("Subscribe",
           style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: Colors.green[900]))),
        ),
      
         Container(
              width: 135,
              height: 150,
                margin: const EdgeInsets.only(top: 60,left: 190),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [BoxShadow(
                      color: Color.fromARGB(255, 42, 81, 43),
                      blurRadius: 30,
                      offset: Offset(0,10)
                    )],
                      color: Colors.white,
                    ),
                   
          
         ),
          Container(
          padding: const EdgeInsets.only(left: 200,top: 90),
          child: TextButton(child: Text("YoungFood",
                   style: TextStyle(color: Colors.green[900],fontWeight: FontWeight.bold,fontSize: 18),),
                   onPressed: (){
                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>  const BodySubscription(
                                    pages: [
                                     youngfood(),
                                     order(),
                                      menu(),
                                      person(),
                                    ],
                                  ),));
                   },),
         ),
        
          Container(
      margin: const EdgeInsets.only(top: 130,left: 205),
      
          child: TextButton(onPressed: () { 
            Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>  const BodySubscription(
                                    pages: [
                                     youngsub(),
                                     order(),
                                      menu(),
                                      person(),
                                    ],
                                  ),));
           },
          child:Text("Subscribe",
           style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: Colors.green[900]))),
        ),

         Container(
              width: 135,
              height: 150,
                margin: const EdgeInsets.only(top: 250,left: 103),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [BoxShadow(
                      color: Color.fromARGB(255, 42, 81, 43),
                      blurRadius: 30,
                      offset: Offset(0,10)
                    )],
                      color: Colors.white,
                    ),
         ),
         Container(
          padding: const EdgeInsets.only(left: 120,top: 270),
          child: TextButton(child: Text("OverFood",
                   style: TextStyle(color: Colors.green[900],fontWeight: FontWeight.bold,fontSize: 18),),
                   onPressed: (){
                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>  const BodySubscription(
                                    pages: [
                                     over(),
                                     order(),
                                      menu(),
                                      person(),
                                    ],
                                  ),));
                   },),
         ),
        
          Container(
      margin: const EdgeInsets.only(top: 320,left: 120),
      
          child: TextButton(onPressed: () { 
            Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>  const BodySubscription(
                                    pages: [
                                     oversub(),
                                     order(),
                                      menu(),
                                      person(),
                                    ],
                                  ),));
           },
          child:Text("Subscribe",
           style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: Colors.green[900]))),
        ),

        ],),
         ],)
 
         )
           
       
        )),
        
       
       
      
       

       ) ;
  }
}

