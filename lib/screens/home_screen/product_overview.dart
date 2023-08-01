import 'package:flutter/material.dart';
enum SigninCharacter { fill, outline }

class ProductOverview extends StatefulWidget{

final String FoodImage;
final String FoodName;
ProductOverview({
 required this.FoodImage,
 required this.FoodName});



  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {


  SigninCharacter _character = SigninCharacter.fill;

  Widget Navigationbar({
    required Color  iconColor,
    required Color backgroundColor,
    required Color color,
    required String title,
    required IconData iconData,
}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        color: backgroundColor,
        child: Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData,
            size: 17,
            color: iconColor,),
            SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(color: color,fontWeight: FontWeight.bold),
            ),

          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          Navigationbar(
              iconColor: Colors.grey,
              backgroundColor: Colors.black,
              color: Colors.white70,
              title: "Add to Wishlist",
              iconData: Icons.favorite_outline),
          Navigationbar(
              iconColor: Colors.amber,
              backgroundColor: Colors.blue,
              color: Colors.white70,
              title: "Go to Cart",
              iconData: Icons.shop_outlined),
        ],
      ),
      appBar:  AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffd6b738),
        title: Text("Product Overview", style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold,
        ),),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(widget.FoodName,style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                      subtitle: Text("\$50"),
                    ),
                    Container(
                      height: 370,
                      width: 350,
                      padding: EdgeInsets.all(20),
                      child: Image.asset(widget.FoodImage,
                      fit: BoxFit.cover,),

                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text("Available Options",textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,color: Colors.grey[700]
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.green,
                              ),
                              Radio(
                                value: SigninCharacter.fill,
                                groupValue: _character,
                                activeColor: Colors.green,
                                onChanged: (value){
                                  setState(() {
                                    _character = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                          Text("\$/50"),
                          Container(padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(15))
                            ),
                            child: Row(
                            // color: Colors.blue,
                            children: [
                              Icon(
                                Icons.add,
                                size: 17,
                                color: Colors.amber,
                              ),
                              Text("ADD",style: TextStyle(
                                color: Colors.amber
                              ),)
                            ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(padding: EdgeInsets.only(left: 20,top: 10),
                      width: double.infinity,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("About this product",style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17,
                          ),),
                          Text("This food is very tasty and rich in nutritions. Food contains all types of "
                              "vegetables\nMixed vegetables refer to ready to use combination of cut "
                              "vegetables. The vegetables may be chopped, sliced, cubed or in juliennes."
                              " The typical vegetables included in mixed vegetable are cauliflower, carrots, "
                              "cabbage, French beans and peas.", style: TextStyle(
                            color: Colors.black,fontSize: 15
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}