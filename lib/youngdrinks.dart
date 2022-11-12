import 'package:final_pro/youngfood.dart';
import 'package:final_pro/youngsnack.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class youngdrinks extends StatefulWidget {
  const youngdrinks({Key? key}) : super(key: key);
  
  @override
  State<youngdrinks> createState() => _youngdrinks();

}
class _youngdrinks extends State<youngdrinks> {
int _d1 = 0;
int _d2 = 0;
int _d3 = 0;
int _d4 = 0;
int _d5 = 0;

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
     style: TextStyle(fontSize: 15,backgroundColor: Colors.grey[400],color: Colors.green[900]))),
        ],
        ),),
         SizedBox(width: 125,
     child: Row(children: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const youngsnack()));
          }, 
          child:Text("Healthy Snacks",
     style: TextStyle(fontSize: 15,backgroundColor: Colors.grey[100],color: Colors.green[900]))),
        ],
        ),),
       
    ])),
    Container(
  child: Column(
    children: [
   Container(height: 25,
    ),
 Text("Healthy Drinks ",
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
             Image.asset('images/k8.jpeg',width: 160,height: 100,),
          const SizedBox(width: 20,),
          
        Column(children: [
          const Padding(padding: EdgeInsets.only(top: 50)),
          Text('Mixed Fruit Juice',style:TextStyle(color:Colors.green[900],
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
          onPressed: ()=>setState(()=>_d1--),),
           
          Container(),
             Text(_d1.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_d1++))
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
             Image.asset('images/k9.jpeg',width: 160,height: 100,),
          const SizedBox(width: 20,),
        
        Column(children: [
          const Padding(padding: EdgeInsets.only(top: 40)),
          Text('Juice Strawberry \nand Cherry',style:TextStyle(color:Colors.green[900],
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
          onPressed: ()=>setState(()=>_d2--),),
           
          Container(),
             Text(_d2.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_d2++))
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
             Image.asset('images/k10.jpeg',width: 160,height: 100,),
          const SizedBox(width: 20,),
            
          
      Column(children: [
        const Padding(padding: EdgeInsets.only(top: 50)),
          Text('Orange Juice',style:TextStyle(color:Colors.green[900],
          fontWeight: FontWeight.bold),),
          const SizedBox(height: 12,),
          Column(children: [
             const Text("2.5jd",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red,fontSize: 12)),
                const SizedBox(height: 7,),
         Container(
          height: 35,
          
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green[900],),
      child: Row(children: [
           
          IconButton(icon: const Icon(Icons.remove,color:Colors.white,size: 25,),
          onPressed: ()=>setState(()=>_d3--),),
           
          Container(),
             Text(_d3.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_d3++))
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
             Image.asset('images/k11.jpeg',width: 130,height: 100,),
          const SizedBox(width: 20,),
          
        Column(children: [
          const Padding(padding: EdgeInsets.only(top: 50)),
          Text('Smoothie Strawberry\n and Milk',style:TextStyle(color:Colors.green[900],
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
          onPressed: ()=>setState(()=>_d4--),),
           
          Container(),
             Text(_d4.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_d4++))
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
          
          child:Row(
            children: [
             Image.asset('images/k12.jpeg',width: 160,height: 100,),
          const SizedBox(width: 20,),
          
        Column(children: [
          const Padding(padding: EdgeInsets.only(top: 50)),
          Text('Oats With Milk',style:TextStyle(color:Colors.green[900],
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
          onPressed: ()=>setState(()=>_d5--),),
           
          
             Text(_d5.toString(),style:const TextStyle(color: Colors.white,)),
             IconButton(icon: const Icon(Icons.add,color:Colors.white,size: 25,)
            ,onPressed: ()=>setState(()=>_d5++))
      ],),)
          ],)
          
        
        ],),

        ],),),
                        
                     ]))])

  ),



    ]))))
    ),
   
    )

  );
  }
}