import 'package:final_pro/kids.dart';
import 'package:final_pro/kidsdrink.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class kidssnack extends StatefulWidget {
  const kidssnack({Key? key}) : super(key: key);
  
  @override
  State<kidssnack> createState() => _kidssnack();

}
class _kidssnack extends State<kidssnack> {
int _it = 0;
int _it1 = 0;
int _it2 = 0;
int _it3 = 0;
int _it4 = 0;
final int _page = 0;
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
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const kids()));
          }, 
          child:Text("Healthy Food",
     style: TextStyle(fontSize: 15,backgroundColor: Colors.grey[100],color: Colors.green[900]))),
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
     style: TextStyle(fontSize: 15,backgroundColor: Colors.grey[400],color: Colors.green[900]))),
        ],
        ),),
       
    ])),
     Container(
  child: Column(
    children: [
   Container(height: 20,
    ),
    Text("Healthy Snacks ",
 
textAlign: TextAlign.left,
     style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900]),),
   const SizedBox(height: 20,),
      SizedBox(height:460,
              width: 300,
                     child: ListView(scrollDirection: Axis.vertical,
                     children: [
                       Container(
         width: 100,
         height: 180,
          decoration: BoxDecoration(
             border: Border.all(
              width: 1,
              color: Colors.white,            
           ),),
          
          child: Row(
            children: [
             Image.asset('images/k13.jpeg',width: 160,height: 120,),
          const SizedBox(width: 20,),
        Column(children: [
          const Padding(padding:EdgeInsets.only(top: 45)),
          Text('Avocado',style:TextStyle(color:Colors.green[900],
          fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
         Column(children: [
          const Text("2.5jd \n for 3 pieces",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red,fontSize: 12)),
            const SizedBox(height: 7,),
         Container(
          height: 35,
          
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green[900],),
      child: Row(children: [
           
          IconButton(icon: const Icon(Icons.remove,color:Colors.white,size: 25,),
          onPressed: ()=>setState(()=>_it--),),
           
          Container(),
             Text(_it.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_it++))
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
             Image.asset('images/k14.jpeg',width: 160,height: 120,),
             const SizedBox(width: 20,),
          
        Column(children: [
          const Padding(padding:EdgeInsets.only(top: 50)),
          Text('Mixed Snacks',style:TextStyle(color:Colors.green[900],
          fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          Column(children: [
          const Text("7.0jd",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red,fontSize: 12)),
           const SizedBox(height: 7,),
         Container(
          height: 35,
          
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green[900],),
      child: Row(children: [
           
          IconButton(icon: const Icon(Icons.remove,color:Colors.white,size: 25,),
          onPressed: ()=>setState(()=>_it2--),),
           
          Container(),
             Text(_it2.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_it2++))
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
             Image.asset('images/k15.jpeg',width: 160,height: 120,),
          const SizedBox(width: 20,),
       Column(children: [
          const Padding(padding:EdgeInsets.only(top: 50)),
          Text('Toast Sandwich',style:TextStyle(color:Colors.green[900],
          fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          Column(children: [
          const Text("2.5jd",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red,fontSize: 12)),
            const SizedBox(height: 7,),
         Container(
          height: 35,
          
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green[900],),
      child: Row(children: [
           
          IconButton(icon: const Icon(Icons.remove,color:Colors.white,size: 25,),
          onPressed: ()=>setState(()=>_it3--),),
           
          Container(),
             Text(_it3.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_it3++))
      ],),)
          ])
        ],),

        ],),),
                           const SizedBox(width: 10,),
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
             Image.asset('images/k16.jpeg',width: 160,height: 120,),
          const SizedBox(width: 20,),
        Column(children: [
          const Padding(padding:EdgeInsets.only(top: 50)),
           Text('Mixed Fruit ',style:TextStyle(color:Colors.green[900],
          fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          Column(children: [
          const Text("4.5jd",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red,fontSize: 12)),const SizedBox(width:20,),
         const SizedBox(height: 7,),
         Container(
          height: 35,
          
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green[900],),
      child: Row(children: [
           
          IconButton(icon: const Icon(Icons.remove,color:Colors.white,size: 25,),
          onPressed: ()=>setState(()=>_it4--),),
           
          Container(),
             Text(_it4.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_it4++))
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
           ),),
          
          child: Row(
            children: [
             Image.asset('images/k17.jpeg',width: 160,height: 100,),
          const SizedBox(width: 20,),
        Column(children: [
          const Padding(padding:EdgeInsets.only(top: 50)),
          Text('Watermelon',style:TextStyle(color:Colors.green[900],
          fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
         Column(children: [
          const Text("2.0jd",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red,fontSize: 12)),
            const SizedBox(height: 7,),
         Container(
          height: 35,
          
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green[900],),
      child: Row(children: [
           
          IconButton(icon: const Icon(Icons.remove,color:Colors.white,size: 25,),
          onPressed: ()=>setState(()=>_it1--),),
           
          Container(),
             Text(_it1.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_it1++))
      ],),)
          ])
        ],),





    ]))]))]))
    ]))))),
    
    )
    );
  }
  }