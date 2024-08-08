import 'package:coffe_shop_app/screen/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/IMG_6945.jpg"),
            fit: BoxFit.cover,
            opacity: 0.9,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Coffee Shop",
              style: TextStyle(
                fontSize: 50, // Correct property name
                color: Colors.white,
                fontWeight: FontWeight.bold, // Optional for styling
              ),
            ),
            Column(
              children: [
                Text(
                  "Feeling Low? Take a Sip of Coffee",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: 80),
                InkWell(
                  splashColor: Colors.black,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> HomeScreen(),
                      ));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 50),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(124, 249, 170, 96),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Get Start",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                    ),
                  ),
                )
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
