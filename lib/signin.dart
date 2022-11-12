
import 'package:final_pro/BodyHome.dart';
import 'package:final_pro/about.dart';
import 'package:final_pro/forgetpass.dart';
import 'package:final_pro/menu.dart';
import 'package:final_pro/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';

class signin extends StatefulWidget {
  const signin ({Key? key}) : super(key: key);
  
  @override
  State<signin > createState() => _siginin();

}
class _siginin  extends State<signin > {
  final _auth = FirebaseAuth.instance;
bool _checkbox = false;

 String emailAddress = '', password = '';
   @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;
   
    return SafeArea(
      
      child: Scaffold( resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
      body: 
       SingleChildScrollView(
        scrollDirection: Axis.vertical,
        
child: (Center(
    child: (Column(
        children: [const SizedBox(height: 70,),
        SizedBox(

          height: 560,
        child: Column(children: [
          SizedBox(height: 40,
          child:  Text("LogIn",style: TextStyle(color: Colors.green[900],fontWeight: FontWeight.bold,fontSize:30),)),
          Container( child: Image.asset("images/log22.jpg",width: 240,height: 150,)),
           SizedBox(
                     width: 250,
                     height: 80,
                      child: TextFormField(
                        
                        onChanged: (value) {
                          emailAddress = value;
                        },
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color:Colors.grey),
                          ),
                          suffixIcon: const Icon(Icons.email),
                          
                          labelText: "Email",
                          hintText: "Enter Your Email",
                          labelStyle: TextStyle(color: Colors.green[900]),
                          hintStyle: TextStyle(color: Colors.green[900]),
                        ),
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
                      ),
                    ),
                     SizedBox(
                        width: 250,
                        height: 80,
                        child: TextFormField(
                          onChanged: (value) {
                            password = value;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color:Colors.grey),),
                           suffixIcon: const Icon(Icons.lock),
                            labelText: "Password",
                            hintText: "Enter Your Password",
                             labelStyle: const TextStyle(color: Color.fromARGB(255, 27, 94, 32)),
                          hintStyle: TextStyle(color: Colors.green[900]),
                          ),
                          validator: (text){
              if (text!=null)
              if (text.length < 8 )
               {
              return " you must enter the same password";}
              else {return null; }
              return null;
            },
           autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          /*Padding(
                              padding: EdgeInsets.only(left: 10, right: 15)),*/
                        
                          Checkbox(
                           // fillColor: MaterialStsateProperty.all<Color>(Colors.white),
                          
                            checkColor: Colors.black,
                              activeColor: Colors.black,
                              value: _checkbox,
                              onChanged: (bool? value) {
                                setState(() {
                                  _checkbox = value!;
                                });
                              }),
                          const Text( "Remmember me",
                           
                            style: TextStyle(fontSize: 15,color:Color.fromARGB(255, 27, 94, 32)),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () {
                               Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const forgetpass()));
                            },
                            child: const Text(
                              'Forget Password?',
                              style: TextStyle(
                                color:Color.fromARGB(255, 27, 94, 32),
                              ),
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.only(left: 15, right: 15)),
                        ],
                      ),
                       TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 27, 94, 32),
                              ),
                            ),
                            onPressed: () {
                               Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const register()),
                        );
                            },
                            child: const Text(
                              'Sing Up',
                              style: TextStyle(
                                color:Color.fromARGB(255, 27, 94, 32),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 40,),
                          SizedBox(
        width: 150,
        height: 50,
       child: ElevatedButton(onPressed: () async{
        
       try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailAddress,
    password: password
  ).then((value) => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BodyHome())));
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}

       },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green[900]),
       shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),),),),
       
       child: const Text("LogIn"),
       ),
       )
      ],
          
      )),
      
      ])),
          
        )),
   
)));
    
  }
}