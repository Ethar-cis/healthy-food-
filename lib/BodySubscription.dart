import 'package:final_pro/bodysub1.dart';
import 'package:flutter/material.dart';

class BodySubscription extends StatefulWidget {
  const BodySubscription({Key? key, required this.pages}) : super(key: key);
  final List pages;
  @override
  State<BodySubscription> createState() => _BodySubscriptionState();
}

class _BodySubscriptionState extends State<BodySubscription> {
  int _indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pages[_indexPage],
      bottomNavigationBar: bodysub1(
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