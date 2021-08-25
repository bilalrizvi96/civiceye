import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:civiceye/View/ProfileFormScreen/ProfileFormScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportDoneScreen extends StatelessWidget {
  const ReportDoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 30, right: 25, left: 25),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
               fit: BoxFit.fill
            )
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.arrow_back,
                  color: Color(0xffF8CE00),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/5,
              ),
              CircleAvatar(
                radius: 60,
                backgroundColor: Color(0xffE7F0FF),
                child: Icon(Icons.check_rounded,
                  color: Color(0xffF8CE00),
                  size: MediaQuery.of(context).size.width/8,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/20,
              ),
              Text("Done!",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width/14,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/20,
              ),
              Opacity(
                opacity: 0.6,
                child: Text("Your report has been sent to\nselected contacts",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width/19,
                    color: Color(0xffFFFFFF),
                    wordSpacing: 1.2,
                    height: 1.3
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/20,
              ),
              GestureDetector(
                onTap: (){
                  // Get.to(ProfileFormScreen());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/3.1,
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height/52
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff0064FE),
                    borderRadius: BorderRadius.all(Radius.circular(
                        MediaQuery.of(context).size.width/70
                    )
                    ),
                  ),
                  child: Text('Share',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width/22.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                      color: primarycolor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}