import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_projects/auth/sign_in.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(milliseconds: 420), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => Signin(),));
    }
    );

  }



 @override
 Widget build(BuildContext context) {
   return Scaffold(

     body: Container(
       color: Colors.blue,
       child: Center(
             child: Text("MADE IN INDIA", style: TextStyle(
               color: Colors.white, fontSize: 25,
               fontWeight: FontWeight.bold,
             ),),
           ),

       ),
     );
 }
}
