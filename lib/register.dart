
import 'package:final_pro/register2.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class register extends StatefulWidget {
  const register ({Key? key}) : super(key: key);
  
  @override
  State<register > createState() => _register ();

}
class _register  extends State<register > {

 _register createState() => _register();

final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    String email = '', password = '';
    

    final devicesize = MediaQuery.of(context).size;
   
    return SafeArea(
      
      child: Scaffold( resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,


    body:
    SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:(Column(
          
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
         
          const SizedBox(height: 40,),
          Container(
            margin: const EdgeInsets.only(left: 35),
            child: Text("Please Enter Your Details to Continue",style: TextStyle(fontSize: 17,color: Colors.green[900]),),
          ),
      
      const SizedBox(height: 40,),
      Container( margin: const EdgeInsets.only(left: 30),
        child: Image.asset("images/log22.jpg",width: 250,height: 180,)),
      const SizedBox(height: 30),
     
      Container(
        margin: const EdgeInsets.only(left: 30),
        height:80,
        width: 250,
        child:  TextFormField(
          onChanged: (value) {
            email = value;
          },
          keyboardType: TextInputType.emailAddress,
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
        ),
      ),
      const SizedBox(height: 20),
     
      Container(
        margin: const EdgeInsets.only(left: 30),
        height: 80,
        width: 250,
        child: Form(child: TextFormField(
          onChanged: (value) {
            password = value;
          },
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
                          
    hintText: 'Enter Your Password',
    labelText: 'Password',
  ),
        ),
      )),
      const SizedBox(height: 20),
      Container(
        margin: const EdgeInsets.only(left: 30),
        height: 80,
        width: 250,
        child:Form(child:  TextFormField(
          validator: (text){
              if (text!=null)
              if (text.length < 8 )
               {
              return " you must enter the same password";}
              else {return null; }
              return null;
            },
            obscureText: true,
           autovalidateMode: AutovalidateMode.onUserInteraction,
           decoration: const InputDecoration(
    suffixIcon: Icon(Icons.lock),
     enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.grey),),
                          
    hintText: 'Enter Your Password',
    labelText: 'Re_Enter Your Password',
  ),
        ),
        )),
        const SizedBox(height: 20,)
        ,
       
                              
                              Container(
                        margin: const EdgeInsets.only(left: 30),
                          decoration: BoxDecoration(
                            color: Colors.green[900],
                            borderRadius: BorderRadius.circular(50),
                          ),
                          width: 180,
                          height: 50,
                          child: TextButton(
                            onPressed: ()async {
                               try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  ).then((value) => Navigator.push(context, MaterialPageRoute(builder: (context)=> const register2())));
 
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}  
                         
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const register2()),
                            );
                            },
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white, textStyle: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold)),
                            child: const Text('Continue'),
                          )
        )])
        )))
        );}      

    
    

  
  
}
