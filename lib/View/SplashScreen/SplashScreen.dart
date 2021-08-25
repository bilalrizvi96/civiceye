
import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:civiceye/Controller/SplashController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.fill
            )
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("CIVIC",
                  style: TextStyle(
                      color: primarycolor,
                      fontSize: MediaQuery.of(context).size.width/10
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/100,
                ),
                Text("EYE",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width/10,
                      color: yallowcolor
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
