import 'package:final_pro/over.dart';
import 'package:final_pro/overdrinks.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class oversnack extends StatefulWidget {
  const oversnack({Key? key}) : super(key: key);
  
  @override
  State<oversnack> createState() => _oversnack();

}
class _oversnack extends State<oversnack> {
int _s1=0;
int _s2=0;
int _s3=0;

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
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const over()));
          }, 
          child:Text("Healthy Food",
     style: TextStyle(fontSize: 15,backgroundColor: Colors.grey[100],color: Colors.green[900]))),
     SizedBox(width: 120,
     child: Row(children: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const overdrinks()));
          },
           child:Text("Healthy Drinks",
     style: TextStyle(fontSize: 15,backgroundColor: Colors.grey[100],color: Colors.green[900]))),
        ],
        ),),
         SizedBox(width: 125,
     child: Row(children: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const oversnack()));
          }, 
          child:Text("Healthy Snacks",
     style: TextStyle(fontSize: 15,backgroundColor: Colors.grey[400],color: Colors.green[900]))),
        ],
        ),),
       
    ])),
    
  const SizedBox(height: 10,),
   Container(
  child: Column(
    children: [
   Container(height: 20,
   ),
 Text("Healthy Snacks ",
 
textAlign: TextAlign.left,
     style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900]),),
   const SizedBox(height: 20,),
      SizedBox(height:450,
              width: 300,
                     child: ListView(scrollDirection: Axis.vertical,
                     children: [
                       Container(
         width: 180,
         height: 200,
          decoration: BoxDecoration(
             border: Border.all(
              width: 1,
              color: Colors.white,            
           ),),//color: Colors.greenAccent,
          
          child: Row(
            children: [
             Image.asset('images/sn1.jpg',width: 160,height: 150,),
          const SizedBox(width: 20,),
       Column(children: [
            const Padding(padding: EdgeInsets.only(top: 50)),
        Text('Raw Nuts',style:TextStyle(color:Colors.green[900],
          fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          Column(children: [
          const Text("2.5jd \ffor 10 pieces",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red,fontSize: 12)),
            const SizedBox(height: 7,),
         Container(
          height: 35,
          
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green[900],),
      child: Row(children: [
           
          IconButton(icon: const Icon(Icons.remove,color:Colors.white,size: 25,),
          onPressed: ()=>setState(()=>_s1--),),
           
          Container(),
             Text(_s1.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_s1++))
      ],),)
          ])
        ],),

        ],),),
                        const SizedBox(width: 10,),
                          Container(
         width: 160,
         height: 220,
          decoration: BoxDecoration(
             border: Border.all(
              width: 1,
              color: Colors.white,            
           ),),//color: Colors.greenAccent,
          
          child: Row(
            children: [
             Image.asset('images/sn2.jpg',width: 160,height: 150,),
          const SizedBox(width: 20,),
        Column(children: [
          const Padding(padding: EdgeInsets.only(top: 60)),
          Text('Dried Fruit',style:TextStyle(color:Colors.green[900],
          fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          Column(children: [
          const Text("7.0jd \ffor 10 pieces",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red,fontSize: 12)),
              const SizedBox(height: 7,),
         Container(
          height: 35,
          
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green[900],),
      child: Row(children: [
           
          IconButton(icon: const Icon(Icons.remove,color:Colors.white,size: 25,),
          onPressed: ()=>setState(()=>_s2--),),
           
          Container(),
             Text(_s2.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_s2++))
      ],),)
          ])
        ],),

        ],),),
                       
                            Container(
         width: 160,
         height: 200,
          decoration: BoxDecoration(
             border: Border.all(
              width: 1,
              color: Colors.white,            
           ),),//color: Colors.greenAccent,
          
          child: Row(
            children: [
             Image.asset('images/sn3.jpg',width: 160,height: 150,),
          const SizedBox(width: 20,),
       Column(children: [
        const Padding(padding: EdgeInsets.only(top: 60)),
        Text('Green Tea',style:TextStyle(color:Colors.green[900],
          fontWeight: FontWeight.bold),),
          const SizedBox(height: 15,),
          Column(children: [
          const Text("2.5jd",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red,fontSize: 12)),
               const SizedBox(height: 7,),
         Container(
          height: 35,
          
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green[900],),
      child: Row(children: [
           
          IconButton(icon: const Icon(Icons.remove,color:Colors.white,size: 25,),
          onPressed: ()=>setState(()=>_s3--),),
           
             Text(_s3.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_s3++))
      ],),)
          ])
        ],),

        ],),),

    ]))]))]))
))),


));
  }
  }