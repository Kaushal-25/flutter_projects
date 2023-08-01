

import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/home_screen/home_screen.dart';
import 'package:flutter_projects/screens/home_screen/profile_screen.dart';
import 'package:flutter_projects/screens/home_screen/review_cart.dart';

class DrawerSide  extends StatelessWidget {
  @override

  Widget listTile( {required IconData icon, required String title , }) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title : Text(
        title, style: TextStyle(
        color: Colors.black,
      ),
      ),
    );
  }

Widget build(BuildContext context) {
    return Scaffold(
      body:  Drawer(
    child: Container(
    color: Color(0xffd1ad17),
    child: ListView(
    children: [
    DrawerHeader(child:
    Container(
    // color: Colors.blue,
    child: Row(
    children: [
    CircleAvatar(
    backgroundColor: Colors.white,
    radius: 48,
    child: CircleAvatar(
    radius: 45,
    // backgroundColor: Colors.red,
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Welcome Guest", style: TextStyle(
    fontWeight: FontWeight.bold,fontSize: 17,
    ),),
    Container(margin: EdgeInsets.only(top: 4),
    height: 50,
    width: 90,
    child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
    OutlinedButton(
    child: Text("LOGIN", style: TextStyle(
    fontWeight: FontWeight.bold,fontSize: 17,
    color: Colors.black,
    ),
    ),style: ButtonStyle(shape: MaterialStateProperty.all(
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(18),
    side: BorderSide(color: Colors.black))) ),

    onPressed: () {},
    ),
    ],
    )

    ),
    ],
    ),
    ),
    ],
    ),
    ),),
    InkWell( onTap: () {
        Navigator.push(context, MaterialPageRoute(builder:
        (context) => HomeScreen()));
    },
        child: Container(
            child: listTile( icon: Icons.home_outlined,title:  "Home",))),
    InkWell( onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewCart(),));
    },
        child: Container(
        child: listTile( icon: Icons.shop_outlined,title:  "Review Cart",))),
    InkWell(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder:
        (context) => ProfileScreen()));
    },
      child: Container(
          child: listTile( icon: Icons.person_outline, title: "My Profile",)),),
    listTile( icon: Icons.star_outline, title: "Rating & Review",),
    listTile( icon: Icons.favorite_outline, title: "Wishlist",),
    listTile( icon: Icons.copy_outlined, title: "Raise a Compliant",),
    listTile( icon: Icons.format_quote_outlined,title:  "FAQs",),

    SizedBox(
    child: Padding(
    padding: const EdgeInsets.only(left: 15,top: 20),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Contact Support",style: TextStyle(fontWeight: FontWeight.bold),),
    SizedBox(
    height: 12,
    ),
    Row(
    children: [
    Text("Call us :",style: TextStyle(fontWeight: FontWeight.bold)),
    SizedBox(
    width: 5,
    ),
    Text("1234567890",style: TextStyle(fontWeight: FontWeight.bold))
    ],),
    SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
    children: [
    Text("Mail us : ",style: TextStyle(fontWeight: FontWeight.bold)),
    SizedBox(
    width: 5,
    ),
    Text("kkaushal212000@gmail.com",style: TextStyle(fontWeight: FontWeight.bold)),
    ],),
    )
    ],
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    );
  }
}