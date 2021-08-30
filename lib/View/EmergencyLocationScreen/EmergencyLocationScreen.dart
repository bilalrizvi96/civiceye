import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:civiceye/Controller/EmergencyLocationContronller.dart';
import 'package:civiceye/Controller/EmergencyStatusController.dart';
import 'package:civiceye/View/Map/MapScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmergencyLocationScreen extends StatelessWidget {
  EmergencyLocationScreen({Key? key}) : super(key: key);
  EmergencyLocationController emergencyLocation =
      Get.put(EmergencyLocationController());
  ActiveShooter ShooterController = Get.put(ActiveShooter());
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
                  fit: BoxFit.fill)),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: GetBuilder(
                init: ShooterController,
                builder: (GetxController controller) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Row(
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
                                  fontSize:
                                      MediaQuery.of(context).size.width / 18),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 100,
                            ),
                            Text(
                              "EYE",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 18,
                                  color: yallowcolor),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 25,
                      ),
                      // Row(
                      //   children: [
                      //     Obx(
                      //       () => Checkbox(
                      //         checkColor: primarycolor,
                      //         activeColor: Color(0xff0064FE),
                      //         value: emergencyLocation.valuesFirst.value,
                      //         onChanged: (value) {
                      //           // ignore: unnecessary_statements
                      //           emergencyLocation.valuesFirst.value =
                      //               !emergencyLocation.valuesFirst.value;
                      //           print(emergencyLocation.valuesFirst.value);
                      //           // setState(() {
                      //           //   this.valuesecond = value!;
                      //           // });
                      //         },
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       width: MediaQuery.of(context).size.width / 100,
                      //     ),
                      //     Text(
                      //       "Tum On Location Services",
                      //       style: TextStyle(
                      //           fontSize: MediaQuery.of(context).size.width / 25,
                      //           color: primarycolor),
                      //     ),
                      //   ],
                      // ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: MediaQuery.of(context).size.height / 15,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(() => Map());
                                // ShooterController.textfield.value = true;
                                // _handlePressButton(context);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.location_on_sharp,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                ShooterController.currentaddress.value
                                            .toString() !=
                                        ''
                                    ? ShooterController.currentaddress.value
                                        .toString()
                                    : "Location",
                                maxLines: 1,
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                ShooterController.CurrentLoction();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.location_searching_outlined,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Critical Emergency Message!",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 25,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 120,
                      ),
                      TextFormField(
                        controller: emergencyLocation.MessageController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Fill the Emergency Message';
                          } else {
                            return null;
                          }
                        },
                        maxLines: 6,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Enter Text Here!",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w800,
                          ),
                          // contentPadding: EdgeInsets.all(23),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(
                                  MediaQuery.of(context).size.height / 70))),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      Row(
                        children: [
                          // Obx(() => Radio(
                          //     value: 'lost',
                          //     groupValue: emergencyLocation.radiogroup.value,
                          //     onChanged: (value){
                          //       emergencyLocation.radiogroup.value;
                          //       print(value);
                          //     },
                          //   ),
                          // ),
                          Obx(
                            () => Checkbox(
                                value: emergencyLocation.lost.value,
                                onChanged: (value) {
                                  if (emergencyLocation.Medical.value == true) {
                                    // emergencyLocation.loast =
                                    emergencyLocation.Medical.value;
                                    // emergencyLocation.lost.value;
                                    print(emergencyLocation.Medical.value);
                                  }
                                  if (emergencyLocation.Medical.value ==
                                      false) {
                                    emergencyLocation.lost.value =
                                        !emergencyLocation.lost.value;
                                    print(emergencyLocation.lost.value);
                                  }
                                  // setState((){
                                  //   this.valuesecond = value!;
                                  // });
                                }),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 80,
                          ),
                          Text(
                            "I'm lost",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 27,
                              color: primarycolor,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 80,
                          ),
                          // Obx(() => Radio(
                          //   value: 'Medical',
                          //   groupValue: emergencyLocation.radiogroup.value,
                          //   onChanged: (value){
                          //     emergencyLocation.radiogroup.value;
                          //     print(value);
                          //   },
                          // ),
                          // ),
                          Obx(
                            () => Checkbox(
                                value: emergencyLocation.Medical.value,
                                onChanged: (value) {
                                  if (emergencyLocation.lost.value == true) {
                                    emergencyLocation.Medical.value;
                                    print(emergencyLocation.Medical.value);
                                  }
                                  if (emergencyLocation.lost.value == false) {
                                    emergencyLocation.Medical.value =
                                        !emergencyLocation.Medical.value;
                                    print(emergencyLocation.Medical.value);
                                  }
                                  // setState((){
                                  //   this.valuesecond = value!;
                                  // });
                                }),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 80,
                          ),
                          Text(
                            "medical emergency",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 27,
                              color: primarycolor,
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height/120,
                      // ),
                      Row(
                        children: [
                          Obx(
                            () => Checkbox(
                                value: emergencyLocation.other.value,
                                onChanged: (value) {
                                  emergencyLocation.other.value =
                                      !emergencyLocation.other.value;
                                  print(value);
                                }),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 80,
                          ),
                          Text(
                            "Other",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 27,
                              color: primarycolor,
                            ),
                          ),
                        ],
                      ),

                      Obx(() => Visibility(
                            visible: emergencyLocation.other.value == true,
                            child: TextFormField(
                              controller: emergencyLocation.otherEmergency,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'Other Emergency',
                              ),
                            ),
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      // InkWell(
                      //   onTap: (){
                      //     if(emergencyLocation.other.isTrue){
                      //       return Other();
                      //     }
                      //   },
                      // ),

                      Row(
                        children: [
                          Obx(
                            () => Checkbox(
                                value: emergencyLocation.termCondition.value,
                                onChanged: (value) {
                                  emergencyLocation.termCondition.value =
                                      !emergencyLocation.termCondition.value;
                                  print(emergencyLocation.termCondition.value);
                                }),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 25,
                          ),
                          Text(
                            "Accept Terms & Conditions",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 30,
                              color: primarycolor,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (emergencyLocation.termCondition.value ==
                                  true) {
                                emergencyLocation.reportSystem();
                              } else {
                                return Get.snackbar(
                                    'Warning', 'First accept Term of condition',
                                    backgroundColor: Color(0xff00327A),
                                    colorText: Colors.white);
                              }
                              // Get.to(ReportDoneScreen());
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3.5,
                              padding: EdgeInsets.symmetric(
                                  vertical:
                                      MediaQuery.of(context).size.height / 62),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff0064FE),
                                borderRadius: BorderRadius.all(Radius.circular(
                                    MediaQuery.of(context).size.width / 70)),
                              ),
                              child: Text(
                                'Confirm',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 30.0,
                                  color: primarycolor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 20,
                      ),
                      Text(
                        "Out of the country and need Embassy\nassistance?",
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 22,
                            color: Color(0xffFFFFFF)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      Row(
                        children: [
                          Text(
                            "click here",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 22,
                                color: Color(0xffFFFFFF)),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 70,
                          ),
                          Text(
                            "USEMBASSY.GOV",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 22,
                              color: Color(0xffFECC05),
                              decoration: TextDecoration.underline,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
