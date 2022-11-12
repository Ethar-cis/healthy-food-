
import 'package:final_pro/otp.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/material/icons.dart';

class forgetpass extends StatefulWidget {
  const forgetpass({Key? key}) : super(key: key);
  
  @override
  State<forgetpass> createState() => _forgetpass();

}
class _forgetpass extends State<forgetpass> {
final _auth = FirebaseAuth.instance;
final _emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( backgroundColor: Colors.white,

      
      
  body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Center(
    child: (Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 130),
        SizedBox(
          height: 70,
          child: Text("Forget Password",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.green[900])),
        ),
        Container(
          child: Image.asset("images/log22.jpg",width: 240,height: 150,),
        ),
        const SizedBox(height: 30,),
        SizedBox(
           height:70,
        width: 300,
        child: Form(child: TextFormField(
          onChanged: (value) {
            _emailcontroller.text = value;
          },
          controller: _emailcontroller,
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
             enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.grey),),
    suffixIcon: Icon(Icons.email),
    
    hintText: 'Enter Your Email',
    labelText: 'Email',
  ),
        )
    )),
    const SizedBox(height: 40,),
       SizedBox(
        width: 200,
        height: 50,
       child: ElevatedButton(onPressed: (){
        _auth.sendPasswordResetEmail(email: _emailcontroller.text.trim()).then((value) => Navigator.push(context, MaterialPageRoute(builder: (context)=> const otp())));
       },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green[900]),
       shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),),),),
       child: const Text("Continue"),
       ),
       ),
    ],

  ))
  )))
  );}
}
