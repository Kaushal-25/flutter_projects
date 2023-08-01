import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/auth/sign_in.dart';
import 'package:flutter_projects/screens/home_screen/drawer_side.dart';
import 'package:flutter_projects/screens/home_screen/home_screen.dart';
import 'package:flutter_projects/screens/home_screen/product_overview.dart';
import 'package:flutter_projects/screens/home_screen/profile_screen.dart';
import 'package:flutter_projects/splash_screen.dart';



void main() async {
 // main ke baad async likhna hai
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );

  }
  }

