import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:civiceye/View/AddNewContactScreen/AddNewContactScreen.dart';
import 'package:civiceye/View/NaturalDisastersScreen/NaturalDisastersScreen.dart';
import 'package:civiceye/View/ReportDescriptionScreen/ReportDescriptionScreen.dart';
import 'package:civiceye/View/ReportInfoScreen/ReposrtInfoScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportOfficerScreen extends StatelessWidget {
  ReportOfficerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async => false,
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 40, left: 35, right: 35),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background.png"),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                    Get.to(ReportInfoScreen());
                  },
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 17,
                        width: MediaQuery.of(context).size.width / 9,
                        child: Image(
                          image: AssetImage("assets/document.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 19,
                      ),
                      Text(
                        "REPORT OFFICER",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 22,
                          color: primarycolor,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: MediaQuery.of(context).size.height / 16,
                  indent: 2,
                  endIndent: 2,
                  thickness: 1,
                  color: primarycolor,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(ReportDescriptionScreen());
                  },
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 17,
                        width: MediaQuery.of(context).size.width / 9,
                        child: Image(
                          image: AssetImage("assets/document.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 19,
                      ),
                      Text(
                        "Add Report",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 22,
                          color: primarycolor,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: MediaQuery.of(context).size.height / 16,
                  indent: 2,
                  endIndent: 2,
                  thickness: 1,
                  color: primarycolor,
                ),
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 17,
                      width: MediaQuery.of(context).size.width / 9,
                      child: Image(
                        image: AssetImage("assets/search.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 19,
                    ),
                    Text(
                      "REPORT SEARCH",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 22,
                        color: primarycolor,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: MediaQuery.of(context).size.height / 16,
                  indent: 2,
                  endIndent: 2,
                  thickness: 1,
                  color: primarycolor,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(NaturalDisastersScreen());
                  },
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 17,
                        width: MediaQuery.of(context).size.width / 9,
                        child: Image(
                          image: AssetImage("assets/bill.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 19,
                      ),
                      Text(
                        "CRITICAL SAFETY SYSTEM",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 22,
                          color: primarycolor,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: MediaQuery.of(context).size.height / 16,
                  indent: 2,
                  endIndent: 2,
                  thickness: 1,
                  color: primarycolor,
                ),
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 9,
                      child: Image(
                        image: AssetImage("assets/trining.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 19,
                    ),
                    Text(
                      "EMERGENCY TRAINING",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 22,
                        color: primarycolor,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: MediaQuery.of(context).size.height / 16,
                  indent: 2,
                  endIndent: 2,
                  thickness: 1,
                  color: primarycolor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
