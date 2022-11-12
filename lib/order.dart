import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;
    Widget bulidUser(
            User
                user) => 
                
       Center(child:
        SizedBox(
         
          height: 150,
          width: 300,
          child:Card(child:
           Row(
            children: [
              const SizedBox(width: 50,),
              ClipRRect(
                
                borderRadius: BorderRadius.circular(50),
                child: CircleAvatar(
                 
            child: Text(user.id,),
          ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Padding(padding: EdgeInsets.only(right: 20)),

              
                 Text(user.name,
                    style: const TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                
            ],
          ),)),
        );
    Stream<List<User>> readUsers() => FirebaseFirestore.instance
        .collection('Drkids')
        .snapshots()
        .map((snapshots) =>
            snapshots.docs.map((doc) => User.fromjson(doc.data())).toList());

    Future<User?> readUser1() async {
      final docuser =
          FirebaseFirestore.instance.collection('Drkids').doc('my-id-1');
      final snapshot = await docuser.get();
      if (snapshot.exists) {
        return User.fromjson(snapshot.data()!);
      }
      return null;
    }

    Future<User?> readUser2() async {
      final docuser =
          FirebaseFirestore.instance.collection('Drkids').doc('my-id-2');
      final snapshot = await docuser.get();
      if (snapshot.exists) {
        return User.fromjson(snapshot.data()!);
      }
      return null;
    }

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 22, 121, 26),
            toolbarHeight: 60.2,
            title: const Text("Orders", style: TextStyle(color: Colors.white)),
          ),
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              FutureBuilder<User?>(
                future: readUser1(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final user = snapshot.data;
                    return user == null
                        ? const Center(child: Text('NO FOUND'))
                        : bulidUser(user);
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              FutureBuilder<User?>(
                  future: readUser2(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final user = snapshot.data;
                      return user == null
                          ? const Center(child: Text('NO FOUND'))
                          : bulidUser(user);
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ],
          )),
    );
  }
}

class User {
  final String name;
  String id;

  User({
    required this.name,
    this.id = '',
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'id': id,
      };
  static User fromjson(Map<String, dynamic> json) =>
      User(id: json['id'], name: json['name']);
}