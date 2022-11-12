import 'dart:ui';
import 'package:final_pro/signin.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';

class editinfo extends StatefulWidget {
  const editinfo({Key? key}) : super(key: key);
  
  @override
  State<editinfo> createState() => _editinfo();

}
class _editinfo extends State<editinfo> {
   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( backgroundColor: Colors.white,

    body:
    SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:(Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          const SizedBox(height: 100),
          const SizedBox(height: 20,),
          Text("Edit Informations",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900]),),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(left: 30),
        height: 80,
        width: 300,
        child:Form(child: TextFormField(
            validator: (text){
              if (text!=null)
              if (text.length < 4 ){
              return " You Must Enter at least one Upper Case";}
              else {return null; }
              return null;
            },
           autovalidateMode: AutovalidateMode.onUserInteraction,
           decoration:  const InputDecoration(
    suffixIcon: Icon(Icons.person),
    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.grey),),
    hintText: 'Edit Name',
    labelText: 'New Name',
  ),
        ),
      )),
      const SizedBox(height: 20),
      Container(
        margin: const EdgeInsets.only(left: 30),
        height:80,
        width: 300,
        child: Form(child: TextFormField(
           validator: (text){
              if (text!=null)
              if (text.length < 4 || !
                text.endsWith('.com') || ! text.contains('@')){
              return " You Must Enter Valid Email ";}
              else {return null; }
              return null;
            },
           autovalidateMode: AutovalidateMode.onUserInteraction,

           decoration: const InputDecoration(
    suffixIcon: Icon(Icons.email),
     enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.grey),),
    hintText: 'Edit Your Email',
    labelText: ' New Email',
  ),
        ),
      )),
      const SizedBox(height: 20),
      Container(
        margin: const EdgeInsets.only(left: 30),
        height: 80,
        width: 300,
        child:Form(child:  TextFormField(
          validator: (text){
              if (text!=null)
              if (text.length < 10 || !
                text.startsWith('079') || text.startsWith('078')){
              return " You Must Enter a Valid Number";}
              else {return null; }
              return null;
            },
           autovalidateMode: AutovalidateMode.onUserInteraction,
           decoration:  const InputDecoration(
    suffixIcon: Icon(Icons.phone),
     enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.grey),),
    hintText: ' Edit Your Phone ',
    labelText: ' New Phone',
  ),
        ),
      )),
      const SizedBox(height: 20),
      Container(
        margin: const EdgeInsets.only(left: 30),
        height: 80,
        width: 300,
        child: Form(child: TextFormField(
          validator: (text){
              if (text!=null)
              if (text.length < 8 ){
              return " You Must Enter at least 8 characters";}
              else {return null; }
              return null;
            },
            obscureText: true,
           autovalidateMode: AutovalidateMode.onUserInteraction,
           decoration:  const InputDecoration(
    suffixIcon: Icon(Icons.lock),
     enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.grey),),
    hintText: 'Edit Your Password',
    labelText: ' New Password',
  ),
        ),
      )),
       const SizedBox(height: 40,),
        Container(
          margin: const EdgeInsets.only(left: 30),
        width: 200,
        height: 50,
       child: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const signin()));
       },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green[900]),
       shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),),),),
       child: const Text("Continue"),
       ),
       ),
        ],



        ))))
        );
  }
}