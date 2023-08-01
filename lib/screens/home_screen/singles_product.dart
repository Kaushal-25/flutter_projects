import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/home_screen/drawer_side.dart';
import 'package:flutter_projects/screens/home_screen/product_overview.dart';

class SinglesProduct extends StatelessWidget{
  final String HomeScreenImage;
  final String HomeScreenImageName;
 // final Function OnTap;
  SinglesProduct({
    required this.HomeScreenImage,
    required this.HomeScreenImageName,
    // required this.OnTap,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 7,left: 7,right: 15,bottom: 10),
      decoration: BoxDecoration(
        color: Color(0xffd9dad9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(HomeScreenImage),
        ),
      ),
      height: 250,
      width: 180,
      child: Container(                     // yha pe ek glti kiye hai pehle column lena tha phir container lena chaiye
        // tha sign wla page mai shi kiye hai
        child: Column(
          children: [
            Padding(                    // padding de ke 'Mix veg' ka sab kuch likhe hai
              padding: const EdgeInsets.only(top: 140,right: 60),
              child: Text(HomeScreenImageName,style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25,
                  shadows: [Shadow(
                    color: Colors.white,
                    offset: Offset(1, 1),
                    blurRadius: 2,
                  ),]
              ),),
            ),
            Padding(                    // padding de ke '2$/2Gram' ka sab kuch likhe hai
              padding: const EdgeInsets.only(right: 60,),
              child: Text("2\$/20 Gram",style: TextStyle(
                  color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 20,
                  shadows: [Shadow(
                    color: Colors.yellow,
                    offset: Offset(1, 1),
                    blurRadius: 2,
                  ),]
              ),),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(                        // mainaxisalignment ka use kar ke  2 alag alag
                  // Containeer mai Button lga diye hai aur uska outline color karne ke liye
                  // border ka istemal kiye hai aur usme button ka attributes  use kiye hai
                  height: 40,
                  width: 75,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  // color: Colors.white,
                  child: MaterialButton(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text("20 Gr",style: TextStyle(
                            color: Colors.white,
                            // fontSize: 12,
                          ),),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 25,
                          color: Colors.white,
                        ),
                      ],
                    ),

                    onPressed: () {},),
                ),
                Container(
                  height: 40,
                  width: 75,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  // color: Colors.white,
                  child: MaterialButton(
                    child: Row(
                      children: [
                        Expanded(
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Text("1", style: TextStyle(
                              color: Colors.white
                          ),),
                        ),
                        Icon(
                          Icons.add,
                          // size: 10,
                          color: Colors.white,
                        ),
                      ],
                    ),

                    onPressed: () {},),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}