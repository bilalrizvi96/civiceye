import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ReportInfoScreen extends StatelessWidget {
  // ReportInfoScreen({Key? key}) : super(key: key);
  bool male= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
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
                padding: const EdgeInsets.only(top: 22.0),
                child: Row(
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
                      width: MediaQuery.of(context).size.width/4,
                    ),
                    Text("Report",
                      style: TextStyle(
                          color: primarycolor,
                          fontSize: MediaQuery.of(context).size.width/18
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/100,
                    ),
                    Text("Officer",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width/18,
                          color: yallowcolor
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.12,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height/18,
                        ),
                        Text("Please Enter All Available\nInformation",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width/18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/48,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Name",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w800, letterSpacing: 1.2),
                            // contentPadding: EdgeInsets.all(23),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    MediaQuery.of(context).size.height / 70))),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/70,
                        ),
                        TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Badge Number",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w800, letterSpacing: 1.2),
                            // contentPadding: EdgeInsets.all(23),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    MediaQuery.of(context).size.height / 70))),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/70,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Card ID",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w800, letterSpacing: 1.2),
                            // contentPadding: EdgeInsets.all(23),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    MediaQuery.of(context).size.height / 70))),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/70,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Color Brass",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w800, letterSpacing: 1.2),
                            // contentPadding: EdgeInsets.all(23),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    MediaQuery.of(context).size.height / 70))),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/70,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Precint/Department",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w800, letterSpacing: 1.2),
                            // contentPadding: EdgeInsets.all(23),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    MediaQuery.of(context).size.height / 70))),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/70,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Male",
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width/25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/70,
                              ),
                              new Radio(
                                value: 0,
                                groupValue: male,
                                onChanged:(val){
                                  // ignore: unnecessary_statements
                                  male;
                                  print(male);
                                },
                              ),
                              Text("Female",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/25,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/70,
                              ),
                              new Radio(
                                value: 1,
                                groupValue: male,
                                onChanged: (val){
                                  // ignore: unnecessary_statements
                                  male;
                                  print(male);
                                },
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height/70,
                        ),
                        TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Color Brass",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w800, letterSpacing: 1.2),
                            // contentPadding: EdgeInsets.all(23),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    MediaQuery.of(context).size.height / 70))),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/70,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/42),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff6F8B3E),
                            borderRadius: BorderRadius.all(Radius.circular(
                                MediaQuery.of(context).size.width/5
                            )
                            ),
                          ),
                          child: Text('Ok',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width/23.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        )
                      ],
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
