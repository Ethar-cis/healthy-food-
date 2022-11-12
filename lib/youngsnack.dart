import 'package:final_pro/youngdrinks.dart';
import 'package:final_pro/youngfood.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class youngsnack extends StatefulWidget {
  const youngsnack({Key? key}) : super(key: key);
  
  @override
  State<youngsnack> createState() => _youngsnack();

}
class _youngsnack extends State<youngsnack> {
int _yo1 = 0;
int _yo2 = 0;
int _yo3 = 0;
int _yo4 = 0;
final int _yo5 = 0;

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
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const youngfood()));
          }, 
          child:Text("Healthy Food",
     style: TextStyle(fontSize: 15,backgroundColor: Colors.grey[100],color: Colors.green[900]))),
     SizedBox(width: 120,
     child: Row(children: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const youngdrinks()));
          },
           child:Text("Healthy Drinks",
     style: TextStyle(fontSize: 15,backgroundColor: Colors.grey[100],color: Colors.green[900]))),
        ],
        ),),
         SizedBox(width: 125,
     child: Row(children: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const youngsnack()));
          }, 
          child:Text("Healthy Snacks",
     style: TextStyle(fontSize: 15,backgroundColor: Colors.grey[400],color: Colors.green[900]))),
        ],
        ),),
       
    ])),

     Container(
  child: Column(
    children: [
   Container(height: 25,
   ),
 Text("Healthy Snacks ",
 
textAlign: TextAlign.left,
     style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900]),),
   const SizedBox(height: 20,),
      SizedBox(height:440,
              width: 300,
                     child: ListView(scrollDirection: Axis.vertical,
                     children: [
                       Container(
         width: 160,
         height: 180,
          decoration: BoxDecoration(
             border: Border.all(
              width: 1,
              color: Colors.white,            
           ),),//color: Colors.greenAccent,
          
          child: Row(
            children: [
             Image.asset('images/yo1.jpg',width: 160,height: 130,),
          
        const SizedBox(width: 15,),
       Column(children: [
        const Padding(padding: EdgeInsets.only(top:40)),
          Text('Chicken Salad',style:TextStyle(color:Colors.green[900],
          fontWeight: FontWeight.bold),),
          const SizedBox(height: 15,),
          Column(children: [
             const Text("2.5jd \n for 3 pieces",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red,fontSize: 12)),
             const SizedBox(height: 7,),
         Container(
          height: 35,
          
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green[900],),
      child: Row(children: [
           
          IconButton(icon: const Icon(Icons.remove,color:Colors.white,size: 25,),
          onPressed: ()=>setState(()=>_yo1--),),
             Text(_yo1.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_yo1++))
      ],),)
          ],)
         
        
        ],),

        ],),),
                       
                          Container(
         width: 160,
         height: 180,
          decoration: BoxDecoration(
             border: Border.all(
              width: 1,
              color: Colors.white,            
           ),),//color: Colors.greenAccent,
          
          child: Row(
            children: [
             Image.asset('images/yo2.jpg',width: 160,height: 130,),
          const SizedBox(width: 15,),
   
       Column(children: [
        const Padding(padding: EdgeInsets.only(top: 50)),
         Text('Macaroni Salad',style:TextStyle(color:Colors.green[900],
          fontWeight: FontWeight.bold),),
          const SizedBox(height: 15,),
          Column(children: [
           const Text("4.0jd",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red,fontSize: 12)),
             const SizedBox(height: 7,),
         Container(
          height: 35,
          
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green[900],),
      child: Row(children: [
           
          IconButton(icon: const Icon(Icons.remove,color:Colors.white,size: 25,),
          onPressed: ()=>setState(()=>_yo2--),),
             Text(_yo2.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_yo2++))
      ],),)
          ],)
          
        
        ],),

        ],),),
                            Container(
         width: 160,
         height: 180,
          decoration: BoxDecoration(
             border: Border.all(
              width: 1,
              color: Colors.white,            
           ),),//color: Colors.greenAccent,
          
          child: Row(
            children: [
             Image.asset('images/yo3.jpg',width: 160,height: 150,),
          const SizedBox(width: 15,),
        Column(children: [
          const Padding(padding: EdgeInsets.only(top: 50)),
           Text('Toast Sandwich',style:TextStyle(color:Colors.green[900],
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
          onPressed: ()=>setState(()=>_yo3--),),
             Text(_yo3.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_yo3++))
      ],),)
          ],)
          
        
        ],),

        ],),),
                         
                            Container(
         width: 160,
         height: 180,
          decoration: BoxDecoration(
             border: Border.all(
              width: 1,
              color: Colors.white,            
           ),),//color: Colors.greenAccent,
          
          child: Row(
            children: [
             Image.asset('images/yo4.jpg',width: 160,height: 140,),
          const SizedBox(width: 15,),
        Column(children: [
          const Padding(padding: EdgeInsets.only(top: 50)),
           Text('Beetroot Salad ',style:TextStyle(color:Colors.green[900],
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
          onPressed: ()=>setState(()=>_yo4--),),
             Text(_yo4.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_yo4++))
      ],),)

          ],)
         
        
        ],),

        ],),),
                           
                  
                     ]))]))]
))))
),

)
  );}
}