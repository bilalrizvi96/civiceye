import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:civiceye/View/EmergencyStatusScreen/EmergencyStatusScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ReferenceUseScreen extends StatelessWidget {
  const ReferenceUseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.fill
            )
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 38.0),
                child: Row(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back,
                            size: MediaQuery.of(context).size.width/13,
                            color: yallowcolor,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/4.6,
                        ),
                        Text("CIVIC",
                          style: TextStyle(
                              color: primarycolor,
                              fontSize: MediaQuery.of(context).size.width/18,
                            letterSpacing: 3
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/100,
                        ),
                        Text("EYE",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width/18,
                              color: yallowcolor,
                            letterSpacing: 2
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Text("FOR REFERENCE USE ONLY",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width/50,
                  color: primarycolor
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("1.",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        color: primarycolor
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/20,
                  ),
                  Text("STAY ALERT, Stay Safe, ! If possible,\nmove quickly and quietly away\nfrom the threat.",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        color: primarycolor
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/32,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("2.",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        color: primarycolor
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/20,
                  ),
                  Text("If #1 is not possible, instruct 1 person\nwith you quietly CALL POLICE,\nbarricade all room doors, move\naway from windows, silence all cell\nphones and remain quiet.",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        color: primarycolor
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/32,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("3.",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        color: primarycolor
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/20,
                  ),
                  Text("Use the Civic Eye plus resources to\nquickly and quietly alert family and\nfriends.",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        color: primarycolor
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/32,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("4.",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        color: primarycolor
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/20,
                  ),
                  Text("When Police arrive keep your hands\nvisible and follow all instructions.",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        color: primarycolor
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/32,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("5.",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        color: primarycolor
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/20,
                  ),
                  Text("Call 911 when you are safe.",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        color: primarycolor
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/32,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("6.",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        color: primarycolor
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/20,
                  ),
                  Text("Prevent individuals from entering an\narea where the active shooter may\nbe.",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        color: primarycolor
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/32,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("7.",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        color: primarycolor
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/20,
                  ),
                  Text("Keep your hands visible.",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        color: primarycolor
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/25,
              ),
              Text("Take the Active Shooter training\ncourse in this app for more detailed instruction",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width/23,
                  color: Color(0xffDDBA12)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
