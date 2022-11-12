import 'package:final_pro/signin.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';


class otp extends StatefulWidget {
  const otp({Key?Key}): super(key:Key);
  
  @override
  State<otp> createState() => _otp();

}

class _otp extends   State<otp>  {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.white,
       
body: SafeArea(child: (Center(
    child: (Column( mainAxisAlignment: MainAxisAlignment.center,
    children: [
      
        Text("OTP Verfication",style: TextStyle(
          fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[900]
        ),),
        
      
      const SizedBox(height: 20,),
      
       
       Text("We send the code to your Phone ",style: TextStyle(fontSize: 12,color: Colors.green[900])),
      const SizedBox(height: 40),

     SizedBox(
        width: 300,
        height: 50,
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(height: 68, width: 64,
          child: TextFormField(
            decoration:InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(950),)),
              onChanged: (value){
              if (value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
          
            style:Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],)),

          SizedBox(height: 68, width: 64,
          child: TextFormField(
            decoration:InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(950),)),
            onChanged: (value){
              if (value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            style:Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],)),
          SizedBox(height: 68, width: 64,
          child: TextFormField(
            decoration:InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(950),)),
              onChanged: (value){
              if (value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            style:Theme.of(context).textTheme.headline6,
            
            keyboardType: TextInputType.number,textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],)),
          SizedBox(height: 68, width: 64,
          child: TextFormField(
            decoration:InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(950),)),
              onChanged: (value){
              if (value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            style:Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],))
        ],)
        ),

        const SizedBox(height: 70,),
        SizedBox(
        width: 200,
        height: 50,
       child: ElevatedButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=> const signin()));
       },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green[900]),
       shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),),),),

       child: const Text("Continue"),
       ),
       ),
      const SizedBox(height: 50,),
      Container(
        child: const Text("Resend OTP code ?")
      )
    ],
    

  )),)),

  ),  
      
      
      

      )
    
    );  
  }
  }