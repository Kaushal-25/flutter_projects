import 'package:flutter/material.dart';

class ReviewCart extends StatelessWidget {

  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffd6b738),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Review Cart", style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}