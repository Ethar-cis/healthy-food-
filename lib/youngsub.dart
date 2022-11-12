

import 'package:final_pro/sport.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class youngsub extends StatefulWidget {
  const youngsub({Key? key}) : super(key: key);
  
  @override
  State<youngsub> createState() => _youngsub();

}
class _youngsub extends State<youngsub> {

final SwitchData = GetStorage();
bool isSwitched = false;

@override
  void initState() {
    super.initState();

    if(switchData.read("isSwitched") != null){
      setState(() {
        isSwitched = switchData.read("isSwitched");
      });
      
    }
  }
final switchData = GetStorage();
 @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body:Center(child:
       SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30,),
               Container(
                padding: const EdgeInsets.only(left: 10),
                width: 300,
                height:160,
                decoration: BoxDecoration(
                  color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 5,
                      color: Colors.grey
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "-These foods are intended for children aged 16 to 50 years",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("-Subscription price is 40 Jordanian dinars per month",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,fontWeight: FontWeight.bold
                          
                        )),
                        SizedBox(height: 10,),
                        Text("-Meals were distributed based on the body's need for the quantities of proteins, carbohydrates and starches",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,fontWeight: FontWeight.bold
                          
                        ))
                  ],
                ),
              ),
                const SizedBox(
                height: 10,
              ),
               Container(margin: const EdgeInsets.only(left:30,right: 10),
           height: 200,
            width:400,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(image: AssetImage('images/ab.jpg'), fit: BoxFit.cover,)),
          alignment: Alignment.center,
        ),
       
        const SizedBox(height: 20,),
         Row(
      
            children: [
              
               const SizedBox(width: 30,),
              Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) =>
 AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,
child: Row(children: [
 const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day1",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Boiled peas with\nminced meat,and\nwhite rice",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n  1',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,
builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: 
[
 const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day2",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Cooked zucchini with\nchopped tomatoes",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),
fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n  2',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width:10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [ const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day3",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Chicken cooked with\nyogurt.",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n  3',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
              Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day4",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Boiled chicken with\n vegetable and\n orange juice",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n  4',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day5",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Boiled rice with\ntomato and meatballes",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n  5',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 30,
              )
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 30,),
              Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day6",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Any kind of food\n does the person\n prefer",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n  6',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day7",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("White boiled rice with\ntometo and okra\n sauce",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n  7',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day8",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Tuna fish with\nFrench fries\n in nair fryerd",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n  8',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
              Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day9",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Coarse bulgur\ncooked with onions\nin yoghurt",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n  9',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day10",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Cooked green beans\nwith onions",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n10',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              )
              
            ],
          ),

          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 30,),
              Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day11",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Cooked zucchini with\n chopped tomatoes",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n11',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day12",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Any kind of food does\nthe person prefer",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n12',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day13",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Grilled fish salmon\nwith vegetables",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n13',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
              Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day14",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Kabsa rice cooked\nin healthy way",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n14',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day15",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Grilled meat with\n vegetable",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n15',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              )
              
            ],
          ),


          
const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 30,),
              Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day16",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Daugh stuffed with\nmeat and nuts\ncooked with yougurt",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n16',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day17",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Grilled chicken\n breast and salad",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n17',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day18",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Any Kind of food does\n the person prefer",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n18',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
              Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day19",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("white rice and \nfish",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n19',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day20",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Freekeh soup with\npieces of meat",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n20',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              )
              
            ],
          ),


const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 30,),
              Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day21",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Bulgur cooked with\nyogurt",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n21',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day22",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Pieces meat cooked\nwith pomegranate\nmolasses",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n22',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day13",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Oat soup with corn\nand boiled beans",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n23',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
              Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day24",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Any kind of food \n the person prefer",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n24',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day25",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Cooked zucchini with\nchopped tomatoes",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n25',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              )
              
            ],
          ),


const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 30,),
              Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day26",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Lettuce salad with\nchicken and yogurt\ncucumber salad",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n26',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day27",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Eggplant and pieces\nof cooked meat",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n27',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day28",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Dough stuffed with\nmeat and nuts\n,cooked with yogurt",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n28',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
              Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day29",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Corn boiled rice\nyellow sauce and\n corn",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n29',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              ),
             Container(width:50.0,height:50.0,
decoration: const BoxDecoration(color: Color.fromARGB(255, 22, 121, 26),shape: BoxShape.circle,),
child: Center(child:TextButton (onPressed: () {showDialog<String>(context: context,builder: (BuildContext context) => AlertDialog( insetPadding: EdgeInsets.zero,
content:  SizedBox(height: 150,width: double.infinity,child: Row(children: [
const SizedBox(width: 10,),const Padding(padding: EdgeInsets.only(right: 20)),
Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [SizedBox(height: 40,),Text( "Day30",                     
style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),SizedBox(height: 10,),
Text("Any kind of food does\nthe person prefer",style: TextStyle(color: Color.fromARGB(255, 22, 121, 26),fontSize: 15,fontWeight: FontWeight.bold,))],),],),),));},
child:const Text('Day\n30',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))))),
              const SizedBox(
                width: 10,
              )
              
            ],
          ),
          const SizedBox(height: 30,),
         
                Container(
                padding: const EdgeInsets.only(left: 10),
                width: 100,
                height: 80,
                decoration: BoxDecoration(

                  color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 5,
                      color: const Color.fromARGB(255, 22, 121, 26)
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const 
                    SizedBox(height: 5,),
                    const Text(
                      "Subscribe",
                      style: TextStyle(
                          color: Color.fromARGB(255, 22, 121, 26), fontWeight: FontWeight.bold),
                    ),
                    

                    
     Column(  
        mainAxisAlignment: MainAxisAlignment.center,  
        children:<Widget>[  
            Switch(
              
                    
              activeColor: const Color.fromARGB(255, 22, 121, 26),
              
              inactiveThumbColor: Colors.grey,
              value: isSwitched, 
            onChanged: (value){
              setState(() {
                isSwitched = value;
                switchData.write("isSwitched", isSwitched);
               
              });
            }
            )
        ])

                    
                  

                  ],
                ),
              ),
              const SizedBox(height: 30,),
          
      
      AnimatedTextKit(
                  totalRepeatCount: 800,
                  animatedTexts: [
                    
                    ScaleAnimatedText(
                      'You must walk daily for an hour\n or if you need help click here',
                      duration: const Duration(milliseconds: 5000),
                      textStyle:
                          const TextStyle(color: Colors.red,fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ],
                ),
      IconButton(onPressed: (){
         Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const sport()),
                              );


      }, icon: const Icon(Icons.arrow_circle_down,color: Colors.red,size: 50,)),
      const SizedBox(height: 20,)

                
              ])
              
    ))));
  }

}