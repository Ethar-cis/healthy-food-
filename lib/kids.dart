
import 'package:final_pro/kidsdrink.dart';
import 'package:final_pro/kidssnack.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class kids extends StatefulWidget {
  const kids({Key? key}) : super(key: key);
  
  @override
  State<kids> createState() => _kids();

}
class _kids extends State<kids> {
final int _page = 0;
int _itemCount = 0;
int _itemCount1 = 0;
int _itemCount2= 0;
int _itemCount3 = 0;
int _itemCount4 = 0;
int _itemCount5 = 0;
final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
 
@override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.white,
       
body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        
child: (Center(
    child: (Column( mainAxisAlignment: MainAxisAlignment.start,
    
    children: [
      Row(
        children: [
          const SizedBox(height: 10,),
          Container(
                margin: const EdgeInsets.all(15),
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Search Food',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
          ),
            Container(margin: const EdgeInsets.all(15),
                 
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20)),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notification_add,
                      color: Colors.grey,
                  ) ),
      )],
      ),
     
         SizedBox(
          height: 40,
          width: 400,
         
        child: Row(children: [
          TextButton(onPressed: (){}, child:Text("Healthy Food",
     style: TextStyle(fontSize: 15,backgroundColor: Colors.grey[400],color: Colors.green[900]))),
     SizedBox(width: 120,
     child: Row(children: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const kidsdrink()));
          }, 
          child:Text("Healthy Drinks",
     style: TextStyle(fontSize: 15,backgroundColor: Colors.grey[100],color: Colors.green[900]))),
        ],
        ),),
         SizedBox(width: 125,
     child: Row(children: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const kidssnack()));
          },
           child:Text("Healthy Snacks",
     style: TextStyle(fontSize: 15,backgroundColor: Colors.grey[100],color: Colors.green[900]))),
        ],
        ),),
       
    ])),

         
     Container(
  child: Column(
    children: [
   Container(height: 20,
    ),
 Text("Healthy Food ",

     style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900]),),
      const SizedBox(height: 25,),
           SizedBox(height:470,
              width: 300,
                     child: ListView(scrollDirection: Axis.vertical,
                     children: [
                       Container(

         width: 130,
         height: 180,
          decoration: BoxDecoration(
             border: Border.all(
              width: 1,
              color: Colors.white,            
           ),),
          
          child: Row(
            children: [
             Image.asset('images/k2.jpeg',width: 150,height: 150,),
          const SizedBox(width: 25,),
        Column(children: [
          const Padding(padding: EdgeInsets.only(top: 50)),
          Text('Spaghetti with\n Vegetables',style:TextStyle(color:Colors.green[900],
          fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          Column(children: [
          const Text("3.5jd",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red,fontSize: 12)),
         const SizedBox(height: 7,),

        Container(
          height: 35,
          
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green[900],),
      child: Row(children: [
           
          IconButton(icon: const Icon(Icons.remove,color:Colors.white,size: 25,),
          onPressed: ()=>setState(()=>_itemCount--),),
           
          Container(),
             Text(_itemCount.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_itemCount++))
      ],),)
          ])
        ],),

        ],),),
                          
                        
                         Container(
         width: 100,
         height: 180,
          decoration: BoxDecoration(
             border: Border.all(
              width: 1,
              color: Colors.white,            
           ),),//color: Colors.greenAccent,
          
          child: Row(
            children: [
             Image.asset('images/k3.jpeg',width: 160,height: 110,),
          const SizedBox(width: 20,),
         
          Column(children: [
          
          const Padding(padding:EdgeInsets.only(top: 40)),
          Text('Rice Smoked\n With Vegetables',style:TextStyle(color:Colors.green[900],
          fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          Column(children: [
          const Text("4.5jd",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red,fontSize: 12))
          ,const SizedBox(height: 7,),
       Container(
          height: 35,
          
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green[900],),
      child: Row(children: [
           
          IconButton(icon: const Icon(Icons.remove,color:Colors.white,size: 25,),
          onPressed: ()=>setState(()=>_itemCount1--),),
           
             Text(_itemCount1.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_itemCount1++))
      ],),)
          ])
        ],),

        ],),),
                 Container(
         width: 100,
         height: 180,
          decoration: BoxDecoration(
             border: Border.all(
              width: 1,
              color: Colors.white,            
           ),),//color: Colors.greenAccent,
          
          child: Row(
            children: [
             Image.asset('images/k4.jpeg',width: 160,height: 120,),
          const SizedBox(width: 20,),
         
        Column(children: [
          
          const Padding(padding:EdgeInsets.only(top: 50)),
           Text('Caesar Salad',style:TextStyle(color:Colors.green[900],
          fontWeight: FontWeight.bold),),
          const SizedBox(height: 15,),
          Column(children: [
          const Text("2.0jd",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red,fontSize: 12)),
          const SizedBox(height: 7,),
         Container(
          height: 35,
          
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green[900],),
      child: Row(children: [
           
          IconButton(icon: const Icon(Icons.remove,color:Colors.white,size: 25,),
          onPressed: ()=>setState(()=>_itemCount2--),),
           
          Container(),
             Text(_itemCount2.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_itemCount2++))
      ],),)
          ])
        ],),

        ],),),
                          
                              Container(
         width: 100,
         height: 180,
          decoration: BoxDecoration(
             border: Border.all(
              width: 1,
              color: Colors.white,            
           ),),//color: Colors.greenAccent,
          
          child:Row(
            children: [
             Image.asset('images/k5.jpeg',width: 160,height: 120,),
          
          const SizedBox(width: 20,),
        Column(children: [
          
          const Padding(padding:EdgeInsets.only(top:50)),
           Text('Eggs With Toast\nand Vegetables',style:TextStyle(color:Colors.green[900],
          fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          Column(children: [
          const Text("1.5jd",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red,fontSize: 12)),
            const SizedBox(height: 7,),
         Container(
          height: 35,
          
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green[900],),
      child: Row(children: [
           
          IconButton(icon: const Icon(Icons.remove,color:Colors.white,size: 25,),
          onPressed: ()=>setState(()=>_itemCount3--),),
           
          Container(),
             Text(_itemCount3.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_itemCount3++))
      ],),)
          ])
        ],),

        ],),),
                          
                               Container(
         width: 100,
         height: 180,
          decoration: BoxDecoration(
             border: Border.all(
              width: 1,
              color: Colors.white,            
           ),),//color: Colors.greenAccent,
          
          child: Row(
            children: [
             Image.asset('images/k6.jpeg',width: 160,height: 120,),
          const SizedBox(width: 20,),
         
        Column(children: [
          
          const Padding(padding:EdgeInsets.only(top: 50)),
           Text('Vegetable Pizza',style:TextStyle(color:Colors.green[900],
          fontWeight: FontWeight.bold),),
          const SizedBox(height: 15,),
         Column(children: [
          const Text("5.0jd",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red,fontSize: 12)),
          
          const SizedBox(height: 7,),
         Container(
          height: 35,
          
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green[900],),
      child: Row(children: [
           
          IconButton(icon: const Icon(Icons.remove,color:Colors.white,size: 25,),
          onPressed: ()=>setState(()=>_itemCount4--),),
           
          Container(),
             Text(_itemCount4.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_itemCount4++))
      ],),)
          ])
        ],),

        ],),),
                
                               Container(
         width: 120,
         height: 200,
          decoration: BoxDecoration(
             border: Border.all(
              width: 1,
              color: Colors.white,            
           ),),//color: Colors.greenAccent,
          
          child: Row(
            children: [
             Image.asset('images/k7.jpeg',width: 160,height: 200,),
      const SizedBox(width: 20,),
        Column(children: [
         
          const Padding(padding:EdgeInsets.only(top: 60,left: 100)),
           Text('Potato',style:TextStyle(color:Colors.green[900],
          fontWeight: FontWeight.bold),),
          const SizedBox(height: 15,),
          Column(children: [
          const Text("3.5jd",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red,fontSize: 12)),
         
          const SizedBox(height: 7,),
         Container(
          height: 35,
          
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green[900],),
      child: Row(children: [
           
          IconButton(icon: const Icon(Icons.remove,color:Colors.white,size: 25,),
          onPressed: ()=>setState(()=>_itemCount5--),),
           
          Container(),
             Text(_itemCount5.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_itemCount5++))
      ],),)
          ])
        ],),

        ],),),
                  

                     
                        
                     ]))

     ] )),
  const SizedBox(height: 10,),
   Container(
  child: Column(
    children: [
   Container(height: 35,
    ),

                     ]))]))

  )),
      



      ),
      

      )
    );
  }
}