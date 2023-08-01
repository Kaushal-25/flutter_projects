

import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/home_screen/drawer_side.dart';
import 'package:flutter_projects/screens/home_screen/product_overview.dart';
import 'package:flutter_projects/screens/home_screen/review_cart.dart';
import 'package:flutter_projects/screens/home_screen/search.dart';
import 'package:flutter_projects/screens/home_screen/singles_product.dart';

class HomeScreen extends StatelessWidget {




  Widget listTile( IconData icon, String title ) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title : TextButton(
        child: Text(
          title, style: TextStyle(
          color: Colors.black,
        ),
        ),
        onPressed: () {},
      ),
    );
  }

  @override
Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: DrawerSide(),         // drawer function hai uska use hua hai
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffd6b738),
        title: Text("Home",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        actions: [
          Padding(        // padding deke circle avatar mai icon ka use kiye hai
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Color(0xffd4d181),
              child: IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Search(),));
              },
                icon:Icon(Icons.search, size: 25, color: Colors.black,),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Color(0xffd4d181),
              child: IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewCart(),));
    },
              icon: Icon(Icons.shop_sharp,color: Colors.black,),),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(          // isko lagye hai kyuki pura scrren scrollable ho vertically
        child: Column(
          children: [
               Container( // container mai image dal ke usme sara likhne wla attributes perform kiye hai

                margin: EdgeInsets.only(top: 12,right: 11,left: 11,bottom: 11),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/foood.jpg"),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                height: 175,
                width: double.infinity,
                 child: Column(
                   children: [Container(
                     margin: EdgeInsets.only(right: 305),
                     height: 50,
                     width: 70,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(bottomRight: Radius.circular(40)),
                       color: Color(0xffd6b738),
                     ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6,top: 7),
                      child: Text("Vegi",style: TextStyle(
                        fontSize: 25,  color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows:[
                          Shadow(
                            color: Colors.green,
                            offset: Offset(3, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),),
                    )
                   ),
                     Container(
                       margin: EdgeInsets.only(right: 145,top: 5),
                       height: 100,
                       width: 200,
                       // color: Colors.amber,
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(top: 8,right: 60),
                             child: Text("30% OFF", style: TextStyle(
                               fontSize: 30, fontWeight: FontWeight.bold,
                               color: Colors.white,
                               shadows:[
                                 Shadow(
                                   color: Colors.white,
                                   offset: Offset(2, 2),
                                   blurRadius: 5,
                                 ),
                               ],
                             ),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 40,),
                             child: Text("On all Products",style: TextStyle(
                               fontSize: 20,
                                fontWeight: FontWeight.bold,
                                 color: Colors.white,
                                 shadows:[
                                    Shadow(
                                       color: Colors.white,
                                           offset: Offset(2, 2),
                                              blurRadius: 5,
                                          ),
                                       ],
                                              ),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 45,top: 6,),
                             child: Text("*Terms and Condition apply",style: TextStyle(
                               fontSize: 10, color: Colors.white
                             ),),
                           )
                         ],

                       ),
                     ),
                   ],

                 ),
              ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text(" Herbs Seasoning", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("View All ",style: TextStyle(color: Colors.grey),)
            ]),
          SingleChildScrollView(                    // yha pe fuction ko call kiye hai
            scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                    (context) => ProductOverview(
                        FoodImage:"assets/food04.jpg" ,
                        FoodName:"Cheese" )));
                  },
                    child: Container(
                      child: SinglesProduct(HomeScreenImage: "assets/food04.jpg",
                          HomeScreenImageName: "Cheese",

                      ),
                    ),
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => ProductOverview(
                        FoodImage:"assets/food01.jpg" ,
                        FoodName:"Chicken" )));
                  },
                    child: Container(
                      child: SinglesProduct(HomeScreenImage: "assets/food01.jpg",
                          HomeScreenImageName: "Chicken",

                      ),
                    ),
                  ),
                  InkWell( onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => ProductOverview(
                        FoodImage:"assets/food02.jpg" ,
                        FoodName:"Chowmin" )));
                  },
                    child: Container(
                      child: SinglesProduct(HomeScreenImage: "assets/food02.jpg",
                          HomeScreenImageName: "Chowmin",

                      ),
                    ),
                  ),
                  InkWell( onTap: () { Navigator.push(context, MaterialPageRoute(builder:
                      (context) => ProductOverview(
                      FoodImage:"assets/food03.jpg" ,
                      FoodName:"Burger" )));},
                    child: Container(
                      child: SinglesProduct(HomeScreenImage: "assets/food03.jpg",
                          HomeScreenImageName: "Burger",

                      ),
                    ),
                  ),

                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" Fresh Fruits", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("View All ",style: TextStyle(color: Colors.grey),)
                ]),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell( onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => ProductOverview(
                        FoodImage:"assets/food03.jpg" ,
                        FoodName:"Biryani" )));
                  },
                    child: Container(
                      child: SinglesProduct(HomeScreenImage: "assets/food03.jpg",
                          HomeScreenImageName: "Biryani",

                      ),
                    ),
                  ),
                  InkWell( onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => ProductOverview(
                        FoodImage:"assets/food02.jpg" ,
                        FoodName:"Noodles" )));
                  },
                    child: Container(
                      child: SinglesProduct(HomeScreenImage: "assets/food02.jpg",
                          HomeScreenImageName: "Noodles",

                      ),
                    ),
                  ),
                  InkWell( onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => ProductOverview(
                        FoodImage:"assets/foood.jpg" ,
                        FoodName:"Cake" )));
                  },
                    child: Container(
                      child: SinglesProduct(HomeScreenImage: "assets/foood.jpg",
                          HomeScreenImageName: "Cake",

                      ),
                    ),
                  ),
                  InkWell( onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => ProductOverview(
                        FoodImage:"assets/food01.jpg" ,
                        FoodName:"Samosa" )));
                  },
                    child: Container(
                      child: SinglesProduct(HomeScreenImage: "assets/food01.jpg",
                          HomeScreenImageName: "Samosa",

                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" Fresh Burger", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("View All ",style: TextStyle(color: Colors.grey),)
                ]),
            SingleChildScrollView
              (
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell( onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => ProductOverview(
                        FoodImage:"assets/food03.jpg" ,
                        FoodName:"Biryani" )));
                  },
                    child: Container(
                      child: SinglesProduct(
                        HomeScreenImage: "assets/food03.jpg",
                          HomeScreenImageName: "Biryani",
                      ),
                    ),
                  ),
                  InkWell( onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => ProductOverview(
                        FoodImage:"assets/food01.jpg" ,
                        FoodName:"Chicken" )));
                  },
                    child: Container(
                      child: SinglesProduct(HomeScreenImage: "assets/food01.jpg",
                          HomeScreenImageName: "Chicken",

                      ),
                    ),
                  ),
                  InkWell( onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => ProductOverview(
                        FoodImage:"assets/food04.jpg" ,
                        FoodName:"Cheeese" )));
                  },
                    child: Container(
                      child: SinglesProduct(HomeScreenImage: "assets/food04.jpg",
                          HomeScreenImageName: "Cheeese",

                      ),
                    ),
                  ),
                 InkWell( onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder:
                       (context) => ProductOverview(
                       FoodImage:"assets/food02.jpg" ,
                       FoodName:"Biryani" )));
                 },
                   child: Container(
                     child: SinglesProduct(HomeScreenImage: "assets/food02.jpg",
                         HomeScreenImageName: "Biryani",
                       ),
                   ),
                 ),
                ],
              ),
            )
          ],
        ),
      ),
    );
}
}