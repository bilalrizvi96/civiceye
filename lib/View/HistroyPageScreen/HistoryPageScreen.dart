import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:civiceye/View/ReportDescriptionScreen/ReportDescriptionScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryPageScreen extends StatelessWidget {
  const HistoryPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop:()async=>false ,
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 25, right: 25),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.fill
              )
            ),
            child: GestureDetector(
              onTap: (){
                Get.to(ReportDescriptionScreen());
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(Icons.arrow_back,
                        //   size: MediaQuery.of(context).size.width/13,
                        //   color: yallowcolor,
                        // ),
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width/3.8,
                        // ),
                        Text("CIVIC",
                          style: TextStyle(
                              color: primarycolor,
                              fontSize: MediaQuery.of(context).size.width/18,
                              letterSpacing: 1.2
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/100,
                        ),
                        Text("EYE",
                          style: TextStyle(
                              color: yallowcolor,
                              fontSize: MediaQuery.of(context).size.width/18,
                              letterSpacing: 1.2
                          ),
                        ),
                      ],
                    ),
                  ),
                 SizedBox(
                   height: MediaQuery.of(context).size.height/30,
                 ),
                 ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xffE7F0FF),
                    radius: MediaQuery.of(context).size.width/13,
                    child: Icon(Icons.person,
                      size: MediaQuery.of(context).size.width/11,
                      color: primarycolor,
                    ),
                  ),
                  title: Text("Camera",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/23,
                        color: primarycolor,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Description",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width/28,
                            color: Color(0xffF8CE00)
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/300,
                      ),
                      Text("Pick current",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width/30,
                            color: Color(0xffB2B1AB)
                        ),
                      )
                    ],
                  ),
                  trailing: Text("13 April",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/30,
                        color: primarycolor,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/30,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xffE7F0FF),
                      radius: MediaQuery.of(context).size.width/13,
                      child: Icon(Icons.person,
                        size: MediaQuery.of(context).size.width/11,
                        color: primarycolor,
                      ),
                    ),
                    title: Text("Camera",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width/23,
                          color: primarycolor,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Description",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width/28,
                              color: Color(0xffF8CE00)
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/300,
                        ),
                        Text("Pick current",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width/30,
                              color: Color(0xffB2B1AB)
                          ),
                        )
                      ],
                    ),
                    trailing: Text("13 April",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width/30,
                          color: primarycolor,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
