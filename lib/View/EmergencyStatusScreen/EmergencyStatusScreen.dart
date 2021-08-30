import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:civiceye/Controller/EmergencyStatusController.dart';
import 'package:civiceye/View/Map/MapScreen.dart';
import 'package:civiceye/View/ReferenceUseScreen/ReferenceUseScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmergencyStatusScreen extends StatelessWidget {
  // const EmergencyStatusScreen({Key? key}) : super(key: key);

  ActiveShooter ShooterController = Get.put(ActiveShooter());

  // bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          // child: ShooterController.isloading == true ?
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.fill)),
        child: SingleChildScrollView(
            child: GetBuilder(
          init: ShooterController,
          builder: (GetxController controller) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
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
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.12,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 20,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(ReferenceUseScreen());
                          },
                          child: Container(
                            color: Color(0xff0064FE),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 18,
                            // decoration: BoxDecoration(
                            //   color: Colors.grey,
                            //   borderRadius: BorderRadius.circular(12)
                            // ),
                            child: Center(
                                child: Text(
                              "Active Shooter Safety Steps",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize:
                                      MediaQuery.of(context).size.width / 28),
                            )),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 35,
                        ),
                        Container(
                          color: Color(0xff0064FE),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 18,
                          // decoration: BoxDecoration(
                          //   color: Colors.grey,
                          //   borderRadius: BorderRadius.circular(12)
                          // ),
                          child: Center(
                              child: Text(
                            "Take Active Shooter Safety Course",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize:
                                    MediaQuery.of(context).size.width / 28),
                          )),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 25,
                        ),
                        Row(
                          children: [
                            Obx(
                              () => Checkbox(
                                checkColor: primarycolor,
                                activeColor: Color(0xff0064FE),
                                value: ShooterController
                                    .current_shooter_situation.value,
                                onChanged: (value) {
                                  ShooterController
                                          .current_shooter_situation.value =
                                      !ShooterController
                                          .current_shooter_situation.value;
                                  print(ShooterController
                                      .current_shooter_situation.value);
                                },
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 40,
                            ),
                            Text(
                              "Currently In Active Shooter Situation",
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 30,
                                color: primarycolor,
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   height: MediaQuery.of(context).size.height/28,
                        // ),
                        // GestureDetector(
                        //   onTap: (){
                        //     ShooterController.geoconverter('islamabad');
                        //   },
                        //   child: Row(
                        //     children: [
                        //       Checkbox(
                        //         checkColor: primarycolor,
                        //         activeColor: Color(0xff0064FE),
                        //         value: this.valuesecond,
                        //         onChanged: (value) {
                        //           // setState(() {
                        //           //   this.valuesecond = value!;
                        //           // });
                        //         },
                        //       ),
                        //       SizedBox(
                        //         width: MediaQuery.of(context).size.width/40,
                        //       ),
                        //       Text("Use Current Location",
                        //         style: TextStyle(
                        //           fontSize: MediaQuery.of(context).size.width/30,
                        //           color: primarycolor,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
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
                              InkWell(
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
                        // TextFormField(
                        //   onChanged: (_) {
                        //     // ShooterController.geoconverter(ShooterController.locationController.text);
                        //     print(ShooterController.locationController);
                        //   },
                        //   controller: ShooterController.locationController,
                        //   decoration: InputDecoration(
                        //     prefixIcon: Icon(
                        //       Icons.location_on,
                        //       size: MediaQuery.of(context).size.width / 14,
                        //       color: Color(0xffFF0000),
                        //     ),
                        //     suffixIcon:
                        //         // height: MediaQuery.of(context).size.height/20,
                        //         // width: MediaQuery.of(context).size.width/10,
                        //         Image(
                        //       image: AssetImage("assets/MyLocation.png"),
                        //       // fit: BoxFit.fitWidth,
                        //     ),
                        //     fillColor: Colors.white,
                        //     filled: true,
                        //     labelText: BaseUrl().currentaddress,
                        //     hintText: BaseUrl().currentaddress,
                        //     hintStyle: TextStyle(color: Colors.black),
                        //     // contentPadding: EdgeInsets.all(23),
                        //     border: OutlineInputBorder(
                        //         borderRadius: BorderRadius.all(Radius.circular(
                        //             MediaQuery.of(context).size.height / 70))),
                        //   ),
                        // ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                        Row(
                          children: [
                            Text(
                              "Are you Safe?",
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 25,
                                color: primarycolor,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 45,
                            ),

                            // new Radio(
                            //   value: 0,
                            //   groupValue: ShooterController.Safe.value,
                            //   onChanged:(val){
                            //     ShooterController.Safe.value;
                            //     print(ShooterController.Safe.value);
                            //   },
                            // ),
                            //
                            // new Radio(
                            //   value: 1,
                            //   groupValue: ShooterController.Safe.value,
                            //   onChanged: (val){
                            //     ShooterController.Safe.value;
                            //     print(ShooterController.Safe.value);
                            //   },
                            // ),

                            Obx(
                              () => Checkbox(
                                checkColor: primarycolor,
                                activeColor: Color(0xff0064FE),
                                value: ShooterController.Safe.value,
                                onChanged: (value) {
                                  if (ShooterController.UserSafe.value ==
                                      false) {
                                    ShooterController.Safe.value =
                                        !ShooterController.Safe.value;
                                    print(ShooterController.Safe.value);
                                  } else {
                                    return null;
                                  }
                                  // setState(() {
                                  //   this.valuesecond = value!;
                                  // });
                                },
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 50,
                            ),
                            Text(
                              "Yes",
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 25,
                                color: primarycolor,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 45,
                            ),
                            Obx(
                              () => Checkbox(
                                checkColor: primarycolor,
                                activeColor: Color(0xff0064FE),
                                value: ShooterController.UserSafe.value,
                                onChanged: (value) {
                                  if (ShooterController.Safe.value == false) {
                                    ShooterController.UserSafe.value =
                                        !ShooterController.UserSafe.value;
                                    print(ShooterController.UserSafe.value);
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 50,
                            ),
                            Text(
                              "No",
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 25,
                                color: primarycolor,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: MediaQuery.of(context).size.height / 15,
                          indent: 2,
                          endIndent: 2,
                          thickness: 1,
                          color: primarycolor,
                        ),
                        // SizedBox(
                        //   height: MediaQuery.of(context).size.height/500,
                        // ),
                        Text(
                          "Define the number of people with you",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 30,
                              color: Color(0xffFFFFFF)),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 70,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          controller: ShooterController.ContactNumbController,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Number of people",
                            // contentPadding: EdgeInsets.all(23),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    MediaQuery.of(context).size.height / 70))),
                          ),
                        ),
                        Divider(
                          height: MediaQuery.of(context).size.height / 17,
                          indent: 2,
                          endIndent: 2,
                          thickness: 1,
                          color: primarycolor,
                        ),
                        // SizedBox(
                        //   height: MediaQuery.of(context).size.height/40,
                        // ),
                        // TextFormField(
                        //   keyboardType: TextInputType.number,
                        //   decoration: InputDecoration(
                        //     fillColor: Colors.white,
                        //     filled: true,
                        //     hintText: "Select Emergency Contact List",
                        //     // contentPadding: EdgeInsets.all(23),
                        //     border: OutlineInputBorder(
                        //         borderRadius: BorderRadius.all(Radius.circular(
                        //             MediaQuery.of(context).size.height/70
                        //         ))
                        //     ),
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: MediaQuery.of(context).size.height/25,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Critical Emergency Message!",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 27,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: ShooterController.Message,
                          maxLines: 7,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Critical Emergency Message!",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    MediaQuery.of(context).size.height / 70))),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 25,
                        ),
                        Row(
                          children: [
                            Obx(
                              () => Checkbox(
                                checkColor: primarycolor,
                                activeColor: Color(0xff0064FE),
                                value: ShooterController.acceptterm.value,
                                onChanged: (value) {
                                  ShooterController.acceptterm.value =
                                      !ShooterController.acceptterm.value;
                                  // setState(() {
                                  //   this.valuesecond = value!;
                                  // });
                                },
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 100,
                            ),
                            Text(
                              "Accept Terms & Conditions",
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 30,
                                color: primarycolor,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                if (ShooterController.acceptterm.value ==
                                    true) {
                                  ShooterController.ActiveshooterInfo();

                                  print('Active Shooter info in true');
                                }
                                if (ShooterController.acceptterm.value ==
                                    false) {
                                  return Get.snackbar('Warning',
                                      'First accept Term of condition',
                                      backgroundColor: Color(0xff00327A),
                                      colorText: Colors.white);
                                }
                                // Get.to(DraftScreen());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3.5,
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        MediaQuery.of(context).size.height /
                                            62),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xff0064FE),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          MediaQuery.of(context).size.width /
                                              70)),
                                ),
                                child: Text(
                                  'Confirm',
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width /
                                            30.0,
                                    color: primarycolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 10,
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        )),
      )
          // : Center(child: CircularProgressIndicator(),)
          ),
    );
  }
}
