import 'package:flutter/material.dart';

class sport extends StatefulWidget {
  const sport({Key? key}) : super(key: key);
  
  @override
  State<sport> createState() => _sport();

}
class _sport extends State<sport> {

@override
  Widget build(BuildContext context) {
    return SafeArea(
    
      child: Scaffold( backgroundColor: Colors.white,
       appBar: AppBar(
         centerTitle: true,
      bottomOpacity: 0.0,
      elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text("WorkOut",textAlign: TextAlign.center,style:
         TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green[900],),)),
        
        
      body:Center(child:
       SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),

              Container(
                padding: const EdgeInsets.only(left: 10,top: 20),
                width: 260,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 22, 121, 26),
                    )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    Text(
                      "WorkOut Daily \n # 1 ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                      child: Text("30 sec \n 4 repet",style: TextStyle(
                          color: Colors.redAccent)),
                    )

                  ],
                    ),  
                    const SizedBox(
                      width: 50,
                    ),
                    Image.asset("images/s1.jpg",height: 60,)
                  ],
                ),
              ),
              const SizedBox(height: 10,),
               Container(
                padding: const EdgeInsets.only(left: 10,top: 20),
                width: 260,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 22, 121, 26),
                    )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    Text(
                      "WorkOut Daily \n # 2 ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                      child: Text("30 sec \n 10 repet",style: TextStyle(
                          color: Colors.redAccent)),
                    )

                  ],
                    ),  
                    
                    const SizedBox(
                      width:26,
                    ),
                    Image.asset("images/s2.jpg",height: 60,)
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.only(left: 10,top: 20),
                width: 260,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 22, 121, 26),
                    )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    Text(
                      "WorkOut Daily \n # 3 ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                    SizedBox(
                      height: 30,
                      child: Text("30 sec \n 6 repet",style: TextStyle(
                          color: Colors.redAccent)),
                    )

                  ],
                    ),  
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("images/s3.jpg")
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.only(left: 10,top: 20),
                width: 260,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 22, 121, 26),
                    )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    Text(
                      "WorkOut Daily \n # 4 ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                      child: Text("30 sec \n 4 repet",style: TextStyle(
                          color: Colors.redAccent)),
                    )

                  ],
                    ),  
                    const SizedBox(
                      width: 50,
                    ),
                    Image.asset("images/s4.jpg")
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.only(left: 10,top: 20),
                width: 260,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 22, 121, 26),
                    )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    Text(
                      "WorkOut Daily \n # 5 ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                    SizedBox(
                      height: 30,
                      child: Text("30 sec \n 8 repet",style: TextStyle(
                          color: Colors.redAccent)),
                    )

                  ],
                    ),   
                    const SizedBox(
                      width: 22,
                    ),
                    Image.asset("images/s5.jpg")
                  ],
                ),
              ),
              const SizedBox(height: 10,),
               Container(
                padding: const EdgeInsets.only(left: 10,top: 20),
                width: 260,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 22, 121, 26),
                    )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    Text(
                      "WorkOut Daily \n # 6 ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                      child: Text("30 sec \n 4 repet",style: TextStyle(
                          color: Colors.redAccent)),
                    )

                  ],
                    ),  
                      
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("images/ss6.jpg")
                  ],
                ),
              ),
              const SizedBox(height: 10,),
               Container(
                padding: const EdgeInsets.only(left: 10,top: 20),
                width: 260,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 22, 121, 26),
                    )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    Text(
                      "WorkOut Daily \n # 7 ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                    SizedBox(
                      height: 30,
                      child: Text("30 sec \n 5 repet",style: TextStyle(
                          color: Colors.redAccent)),
                    )

                  ],
                    ),    
                    const SizedBox(
                      width: 25,
                    ),
                    Image.asset("images/s7.png")
                  ],
                ),
              ),
              const SizedBox(height: 10,),
               Container(
                padding: const EdgeInsets.only(left: 10,top: 20),
                width: 260,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 22, 121, 26),
                    )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    Text(
                      "WorkOut Daily \n # 8 ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                      child: Text("30 sec \n 10 repet",style: TextStyle(
                          color: Colors.redAccent)),
                    )

                  ],
                    ),    
                    const SizedBox(
                      width: 25,
                    ),
                    Image.asset("images/s8.jpg",width: 100,)
                  ],
                ),
              ),
              const SizedBox(height: 10,),
               Container(
                padding: const EdgeInsets.only(left: 10,top: 20),
                width: 260,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 22, 121, 26),
                    )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    Text(
                      "WorkOut Daily \n # 9 ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                      child: Text("30 sec \n 4 repet",style: TextStyle(
                          color: Colors.redAccent)),
                    )

                  ],
                    ),   
                    const SizedBox(
                      width:23,
                    ),
                    Image.asset("images/s9.jpg",)
                  ],
                ),
              ),
              const SizedBox(height: 10,),
               Container(
                padding: const EdgeInsets.only(left: 10,top: 20),
                width: 260,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 22, 121, 26),
                    )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    Text(
                      "WorkOut Daily \n # 10 ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                      child: Text("30 sec \n 10 repet",style: TextStyle(
                          color: Colors.redAccent)),
                    )

                  ],
                    ),  
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("images/s10.jpg",)
                  ],
                ),
              ),
               const SizedBox(height: 10,),
               Container(
                padding: const EdgeInsets.only(left: 10,top: 20),
                width: 260,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 22, 121, 26),
                    )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    Text(
                      "WorkOut Daily \n # 11",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                      child: Text("30 sec \n 10 repet",style: TextStyle(
                          color: Colors.redAccent)),
                    )

                  ],
                    ),   
                    const SizedBox(
                      width:22,
                    ),
                    Image.asset("images/s11.jpg",)
                  ],
                ),
              ),
               const SizedBox(height: 10,),
               Container(
                padding: const EdgeInsets.only(left: 10,top: 20),
                width: 260,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 22, 121, 26),
                    )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    Text(
                      "WorkOut Daily \n # 12 ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                      child: Text("30 sec \n 8 repet",style: TextStyle(
                          color: Colors.redAccent)),
                    )

                  ],
                    ),   
                    const SizedBox(
                      width:50,
                    ),
                    Image.asset("images/s12.jpg",)
                  ],
                ),
              ),
               const SizedBox(height: 10,),
               Container(
                padding: const EdgeInsets.only(left: 10,top: 20),
                width: 260,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 22, 121, 26),
                    )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    Text(
                      "WorkOut Daily \n # 13 ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                      child: Text("30 sec \n 4 repet",style: TextStyle(
                          color: Colors.redAccent)),
                    )

                  ],
                    ),  
                    const SizedBox(
                      width:25,
                    ),
                    Image.asset("images/s13.jpg",height: 60,)
                  ],
                ),
              ),
               const SizedBox(height: 10,),
               Container(
                padding: const EdgeInsets.only(left: 10,top: 20),
                width: 260,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 22, 121, 26),
                    )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    Text(
                      "WorkOut Daily \n # 14 ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                      child: Text("30 sec \n 10 repet",style: TextStyle(
                          color: Colors.redAccent)),
                    )

                  ],
                    ),   
                    const SizedBox(
                      width:25,
                    ),
                    Image.asset("images/s14.jpg",
                    height: 50,width: 100,)
                  ],
                ),
              ),
               const SizedBox(height: 10,),
               Container(
                padding: const EdgeInsets.only(left: 10,top: 20),
                width: 260,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 22, 121, 26),
                    )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    Text(
                      "WorkOut Daily \n # 15",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                      child: Text("30 sec \n 5 repet",style: TextStyle(
                          color: Colors.redAccent)),
                    )

                  ],
                    ),   
                    const SizedBox(
                      width:25,
                    ),
                    Image.asset("images/s15.jpg",height: 50,width: 100,)
                  ],
                ),
              ),
               
              

        ]))))
        );
}
}