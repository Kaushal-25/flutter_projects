

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
// import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_projects/screens/home_screen/home_screen.dart';
import 'package:flutter_projects/screens/home_screen/product_overview.dart';
import 'package:google_sign_in/google_sign_in.dart';


// Signin namm hai class ka usko call karenge main file mai

 class Signin extends StatelessWidget {






   googleLogin() async{
     print("googleLogin method called");
     GoogleSignIn _googleSignIn = GoogleSignIn();
     try {
       var reslut = await _googleSignIn.signIn();
       if (reslut == null) {
         return;
       }
       final userData = await reslut.authentication;
       final credential = GoogleAuthProvider.credential(
         accessToken: userData.accessToken, idToken: userData.idToken);
       var finalResult =
           await FirebaseAuth.instance.signInWithCredential(credential);
       print("Result $reslut");
       print(reslut.displayName);
       print(reslut.email);
       print(reslut.photoUrl);
     } catch (error) {
       print(error);
     }
   }

   Future<void> logout() async{
     await GoogleSignIn().disconnect();
     FirebaseAuth.instance.signOut();
   }

  @override
Widget build(BuildContext context) {
    return Scaffold(
      body: Container( // ek container bna ke isme pura image dal diye hai ,full screen container hai
        decoration: BoxDecoration(
          // color: Colors.amber,
          image: DecorationImage(
            fit: BoxFit.cover,

            image: AssetImage("assets/background.jpg"),
          ),
        ),
        height: double.infinity,
        width: double.infinity,
        // color: Colors.amber,
        child: Column( // ek column bna ke usme container liye hai
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              // color: Colors.red,
              // color: Colors.amber,
              child: Column( // container ke andar ab column wise sab likhe hai
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Sign in to Continue", style: TextStyle(
                    fontSize: 24,
                    color: Colors.amber,
                  ),),
                  Text("Vegi", style: TextStyle(
                      fontSize: 50,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      // fontStyle: FontStyle.italic,
                      shadows: [
                        Shadow(
                          color: Colors.green,
                          // offset: Offset(4, 4),
                          blurRadius: 18,
                        ),
                      ]),
                  ),
                  Column( // yha pe phir se column liye hai kyuki jo google wla buttons sab hai woh
                    // ek sath rahe alag alag na ho jaye kyuki upar mainaxisalignment. spaceevenly hai
                    children: [
                      ElevatedButton(onPressed: () {

        },

                        child: Text("Google login"),),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context) => HomeScreen()));
                       },child: Text('Button 2'),
                      ),

                      ElevatedButton(onPressed: (){}, child: Text('Button 3'),)
                    ],
                  ),
                  Column( // same kamm ke liye phir se column liye hai
                    // yha pe phir se column liye hai kyuki jo google wla buttons sab hai woh
                    // ek sath rahe alag alag na ho jaye kyuki upar mainaxisalignment. spaceevenly hai
                    children: [
                      Text("By sigining in you are agreeing to our",
                        style: TextStyle(color: Colors.amber,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),),
                      Text("Terms and Privacy Policy",
                        style: TextStyle(color: Colors.amber,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],

              ),
            ),
          ],
        ),
      ),

    );
  }
}
