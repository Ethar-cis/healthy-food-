
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_pro/BodyHome.dart';
import 'package:final_pro/menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


class register2 extends StatefulWidget {
  const register2({Key? key}) : super(key: key);

  @override
  State<register2> createState() => _register2State();
}

class _register2State extends State<register2> {
  _register2State createState() => _register2State();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  final FirebaseFirestore db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;
    Future<String?> addUser() async {
      try {
        CollectionReference Users =
            FirebaseFirestore.instance.collection('Users');
        await Users.doc("Ao61jDgvLv4SYJNXXkcT").set(
            {'Name': _nameController.text, 'Phone': _phoneController.text});
        return 'success';
      } catch (e) {
        return 'Error adding user';
      }
    }

    Future<String?> getUser(String Name) async {
      try {
        CollectionReference Users =
            FirebaseFirestore.instance.collection('Users');
        final snapshot = await Users.doc(Name).get();
        final data = snapshot.data() as Map<String, dynamic>;
        return data['Name'];
      } catch (e) {
        return 'Error fetching user';
      }
    }

    CollectionReference addUsers =
        FirebaseFirestore.instance.collection('Users');


    Future Creatuser(User user) async {
      final docuser = FirebaseFirestore.instance
          .collection('Users')
          .doc();
     
      final json = user.toJson();
      await docuser.set(json);
    }
    

    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: 
                Container(
                    width:double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(children: [
                      const SizedBox(
                        height: 60,
                      ),
                      Image.asset(
                        "images/log22.jpg",
                        width: 250,
                        height: 180,
                      ),
                      const SizedBox(height: 20,),
                      const Text(" Complete Register ",
                          style: TextStyle(
                              color:( Color.fromARGB(255, 27, 94, 32)),
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      const Padding(padding: EdgeInsets.only(top: 30)),
                       Container(
        margin: const EdgeInsets.only(left: 20),
       
        height: 80,
        width: 250,
        child:Form(child: TextFormField(
          controller: _nameController,
            validator: (text){
              if (text!=null)
              if (text.length < 3 ){
              return " You Must Enter at least 3 characters";}
              else {return null; }
              return null;
            },
           autovalidateMode: AutovalidateMode.onUserInteraction,
           decoration:  const InputDecoration(
    suffixIcon: Icon(Icons.person),
    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.grey),),
                          
    hintText: 'Enter Your  Name',
    labelText: 'Your Name',
  ),
        ),
      )),
      const SizedBox(height: 20,),
                     Container(
        margin: const EdgeInsets.only(left: 20),
        height: 80,
        width: 250,
        child:Form(child:  TextFormField(
          controller: _phoneController,
          validator: (text){
              if (text!=null)
              // ignore: curly_braces_in_flow_control_structures
              if (text.length == 10 && 
                 text.startsWith('07')  
                                ){
              return " You Must Enter a Valid Number";}
              return null;
              
            },
           autovalidateMode: AutovalidateMode.onUserInteraction,
           decoration:  const InputDecoration(
    suffixIcon: Icon(Icons.phone),
     enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.grey),),
                          
    hintText: ' +962 ',
    labelText: 'Phone',
  ),
        ),
      )),
      const SizedBox(height: 20,),
                      Container(
                        margin: const EdgeInsets.only(left: 30),
                          decoration: BoxDecoration(
                            color: Colors.green[900],
                            borderRadius: BorderRadius.circular(50),
                          ),
                          width: 180,
                          height: 50,
                          child: TextButton(
                            onPressed: () {
                              final user = User(
                                  Name: _nameController.text,
                                  Phone: _phoneController.text);
                              Creatuser(user);
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>const BodyHome()),
                            );
                            },
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white, textStyle: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold)),
                            child: const Text('Continue'),
                          )),
                    ])),
              
            ));
  }
}


class User{
    final String Name;
    final String  Phone;
    
    User({
    required this.Name,
    required this.Phone,});

    Map <String,dynamic> toJson()=>{
    'Name':Name,
    'Phone':Phone,};
    }