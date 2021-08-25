import 'package:civiceye/API/API.dart';
import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:civiceye/View/AddNewContactScreen/AddNewContactScreen.dart';
import 'package:civiceye/View/EmergencyContactList/EmergencyContactList.dart';
import 'package:civiceye/View/EmergencyLocationScreen/EmergencyLocationScreen.dart';
import 'package:civiceye/View/EmergencyStatusScreen/EmergencyStatusScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NaturalDisastersScreen extends StatelessWidget {
  const NaturalDisastersScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 15, right: 15, top: 50),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.fill)),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: MediaQuery.of(context).size.width / 13,
                      color: yallowcolor,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3.8,
                  ),
                  Text(
                    "CIVIC",
                    style: TextStyle(
                        color: primarycolor,
                        fontSize: MediaQuery.of(context).size.width / 18),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 100,
                  ),
                  Text(
                    "EYE",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 18,
                        color: yallowcolor),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
              ),
              GestureDetector(
                onTap: () {
                  // API().reportCategories();
                  Get.to(EmergencyContactListScreen());
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 11,
                      backgroundColor: Color(0xffAEADC2),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("assets/home.png"),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 19,
                    ),
                    Text(
                      "NATURAL DISASTERS",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 22,
                        color: primarycolor,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: MediaQuery.of(context).size.height / 12,
                indent: 2,
                endIndent: 2,
                thickness: 2,
                color: primarycolor,
              ),
              GestureDetector(
                onTap: () {
                  //Emergency Screen
                  Get.to(EmergencyStatusScreen());
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 11,
                      backgroundColor: Color(0xffAEADC2),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("assets/activeShooter.png"),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 19,
                    ),
                    Text(
                      "ACTIVE SHOOTER",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 22,
                        color: primarycolor,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: MediaQuery.of(context).size.height / 12,
                indent: 2,
                endIndent: 2,
                thickness: 2,
                color: primarycolor,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(EmergencyLocationScreen());
                },
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width / 5.5,
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.width / 9,
                        backgroundColor: Color(0xffAEADC2),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 22,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("assets/emergencySystem.png"),
                            // fit: BoxFit.fill
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 28,
                    ),
                    Text(
                      "VACATION EMERGENCY SYSTEM",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 24,
                        color: primarycolor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(AddNewContactScreen());
                  // Get.to(EmergencyStatusScreen());
                },
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width / 5.5,
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.width / 9,
                        backgroundColor: Color(0XFFFECC05),
                        child: Container(
                          // height: ,
                          height: MediaQuery.of(context).size.height / 22,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(
                              "assets/emergencyContact.png",
                            ),
                            // fit: BoxFit.fill
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 28,
                    ),
                    Text(
                      "CREATE EMERGENCY CONTACT",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 24,
                        color: Color(0xffFECC05),
                      ),
                    ),
                  ],
                ),
              ),
              // Divider(
              //   // height: MediaQuery.of(context).size.height/15,
              //   indent: 12,
              //   endIndent: 5,
              //   thickness: 2,
              //   color: primarycolor,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
