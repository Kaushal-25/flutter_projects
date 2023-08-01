import 'package:flutter/material.dart';


class Search extends StatelessWidget{

  @override
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      appBar: AppBar(backgroundColor: Color(0xffd6b738),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Search box", style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body:
      ListView(
        children: [
          ListTile(
            title: Text("Items",style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
          ),
          Container(
            height: 52,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                fillColor: Color(0xffc2c2c2),
                filled: true,
                hintText: (" Search for items in the store"),
                suffixIcon: Icon(Icons.search)
              ),
            ),
          )
        ],
      ),
    );
  }
}