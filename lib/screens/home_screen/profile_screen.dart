import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/home_screen/drawer_side.dart';

class ProfileScreen extends StatelessWidget {
  @override

  Widget listTile({required IconData icon , required String title}) {
    return Column(
      children: [
        Divider(
          height: 1,
        ),
        ListTile(
          title: Text(title),
          leading: Icon(icon),
          trailing: Icon(Icons.arrow_forward_ios_outlined),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd6b738),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffd6b738),
        elevation: 3,
        title: Text("My Profile",style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.bold
        ),),
      ),
      drawer: DrawerSide(),
      body: Stack(
        children: [ Column(
          children: [
            Flexible(
              child: Container(
                height: 120,
                 // width: double.infinity,
                color: Color(0xffd6b738),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              height: 577,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffcbcbcb),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                topRight: Radius.circular(40))
              ),
              child: ListView(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 60,
                        width: 250,
                        // color: Colors.blue,
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(("Kaushal Kumar"),style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("kkaushal212000@gmail.com"),
                              ],
                            ),
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: Color(0xffd6b738) ,
                             child: CircleAvatar(
                               radius: 19,
                               backgroundColor: Color(0xffcbcbcb),
                               child: Icon(Icons.edit,size: 25,color: Color(0xffd6b738),),
                             ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  listTile(
                      icon:(Icons.shop_outlined) ,
                      title: "My order"),
                  listTile(
                      icon:(Icons.location_on_outlined) ,
                      title: "My Delivery Address"),
                  listTile(
                      icon:(Icons.person_outlined) ,
                      title: "Refer a Friends"),
                  listTile(
                      icon:(Icons.file_copy_outlined) ,
                      title: "Terms and Conditions"),
                  listTile(
                      icon:(Icons.add_chart) ,
                      title: "About"),
                  listTile(
                      icon:(Icons.policy_outlined) ,
                      title: "Privacy Policy"),
                  listTile(
                      icon:(Icons.logout_outlined) ,
                      title: "Log out"),

                ],
              ),
            ),
          ],
        ),
          Padding(
            padding: const EdgeInsets.only(top: 70.0,left: 40),
            child: CircleAvatar(
              radius: 47,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 42,
                // backgroundColor: Colors.cyan,
                backgroundImage: AssetImage("assets/animatedFace.jpg"),
              ),
            ),
          ),
    ],
      ),


        );
  }
}