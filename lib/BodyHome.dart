import 'package:final_pro/home.dart';
import 'package:final_pro/order.dart';
import 'package:final_pro/person.dart';
import 'package:flutter/material.dart';

import 'navigatin_custom.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  int _indexPage = 0;
  final List _pages = [
    const home(),
    const order(),
    const person(),
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_indexPage],
      bottomNavigationBar: CustomNavigationBar(
        indexPage: _indexPage,
        onPress: (value) {
          setState(() {
            _indexPage = value;
          });
        },
      ),
    );
  }
}