import 'package:civiceye/API/API.dart';
import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:civiceye/Controller/EmergencyContactListControler.dart';
import 'package:civiceye/Models/NaturalDisastersModel.dart';
import 'package:civiceye/View/BottomNavigation/BottomNavigation.dart';
import 'package:civiceye/View/NaturalDisastersScreen/NaturalDisastersScreen.dart';
import 'package:civiceye/View/ReportOfficer/ReportOfficer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:modal_progress_hud/modal_progress_hud.dart';

class EmergencyContactListScreen extends StatelessWidget {
  // const EmergencyContactListScreen({Key? key}) : super(key: key);
  // final CheckController checkController = Get.put(CheckController());
  // Future<List<UserID>> CategoriesController.FetchCategoriesList();
  CategoriesController Controller = Get.put(CategoriesController());

  bool values10 = false;
  final futureVar = API().reportCategories();
  // static GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 23, right: 23, top: 40),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.fill)),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
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
                            fontSize: MediaQuery.of(context).size.width / 18,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 100,
                      ),
                      Text(
                        "EYE",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 18,
                            color: yallowcolor,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                FutureClass(futureVar, Controller),
                // Row(
                //   children: [
                //     Obx(() => Checkbox(
                //         value: Controller.Hurricane.value,
                //         onChanged:(value){
                //           Controller.Hurricane.value = !Controller.Hurricane.value;
                //         }
                //     )),
                //     SizedBox(
                //       width: MediaQuery.of(context).size.width /500,
                //     ),
                //     Text("Hurricane",
                //       style: TextStyle(
                //           fontSize: MediaQuery.of(context).size.width/25,
                //           color: Color(0xffFFFFFF)
                //       ),
                //     ),
                //   ],
                // ),
                // Row(
                //   children: [
                //     Obx(() => Checkbox(
                //         value: Controller.Tornado.value,
                //         onChanged:(value){
                //           Controller.Tornado.value = !Controller.Tornado.value;
                //         }
                //     )),
                //     SizedBox(
                //       width: MediaQuery.of(context).size.width /500,
                //     ),
                //     Text("Tornado",
                //       style: TextStyle(
                //           fontSize: MediaQuery.of(context).size.width/25,
                //           color: Color(0xffFFFFFF)
                //       ),
                //     ),
                //   ],
                // ),
                // Row(
                //   children: [
                //     Obx(() => Checkbox(
                //         value: Controller.Earthquake.value,
                //         onChanged:(value){
                //           Controller.Earthquake.value = !Controller.Earthquake.value;
                //         }
                //     )),
                //     SizedBox(
                //       width: MediaQuery.of(context).size.width /500,
                //     ),
                //     Text("Earthquake",
                //       style: TextStyle(
                //           fontSize: MediaQuery.of(context).size.width/25,
                //           color: Color(0xffFFFFFF)
                //       ),
                //     ),
                //   ],
                // ),
                // Row(
                //   children: [
                //     Obx(() => Checkbox(
                //         value: Controller.Flood.value,
                //         onChanged:(value){
                //           Controller.Flood.value = !Controller.Flood.value;
                //         }
                //     )),
                //     SizedBox(
                //       width: MediaQuery.of(context).size.width /500,
                //     ),
                //     Text("Flood",
                //       style: TextStyle(
                //           fontSize: MediaQuery.of(context).size.width/25,
                //           color: Color(0xffFFFFFF)
                //       ),
                //     ),
                //   ],
                // ),
                // Row(
                //   children: [
                //     Obx(() => Checkbox(
                //         value: Controller.Forest.value,
                //         onChanged:(value){
                //           Controller.Forest.value = !Controller.Forest.value;
                //         }
                //     )),
                //     SizedBox(
                //       width: MediaQuery.of(context).size.width /500,
                //     ),
                //     Text("Forest/Wild Fire",
                //       style: TextStyle(
                //           fontSize: MediaQuery.of(context).size.width/25,
                //           color: Color(0xffFFFFFF)
                //       ),
                //     ),
                //   ],
                // ),
                // Row(
                //   children: [
                //     Obx(() => Checkbox(
                //         value: Controller.Wind.value,
                //         onChanged:(value){
                //           Controller.Wind.value = !Controller.Wind.value;
                //         }
                //     )),
                //     SizedBox(
                //       width: MediaQuery.of(context).size.width /500,
                //     ),
                //     Text("Wind/Sand/Dust Storm",
                //       style: TextStyle(
                //           fontSize: MediaQuery.of(context).size.width/25,
                //           color: Color(0xffFFFFFF)
                //       ),
                //     ),
                //   ],
                // ),
                // Row(
                //   children: [
                //     Obx(() => Checkbox(
                //         value: Controller.Blizzard.value,
                //         onChanged:(value){
                //           Controller.Blizzard.value = !Controller.Blizzard.value;
                //         }
                //     )),
                //     SizedBox(
                //       width: MediaQuery.of(context).size.width /500,
                //     ),
                //     Text("Blizzard",
                //       style: TextStyle(
                //           fontSize: MediaQuery.of(context).size.width/25,
                //           color: Color(0xffFFFFFF)
                //       ),
                //     ),
                //   ],
                // ),

                SizedBox(
                  height: MediaQuery.of(context).size.height / 130,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    "Critical Emergency Message!",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 23,
                        color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                                MediaQuery.of(context).size.width / 70),
                          )),
                      child: TextFormField(
                        controller: Controller.EmergencyMessage,
                        maxLines: 10,
                        // validator: (value){
                        //   if(value!.isEmpty){
                        //     return 'Enter Emergency Message';
                        //   }
                        //   return null;
                        // },
                        decoration: InputDecoration(
                          hintText: "Critical Emergency Message",
                          contentPadding: EdgeInsets.all(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                Row(
                  children: [
                    Obx(
                      () => Checkbox(
                        checkColor: primarycolor,
                        activeColor: Color(0xff0064FE),
                        value: Controller.checkBox1.value,
                        // value: this.values10,
                        onChanged: (value) {
                          Controller.checkBox1.value =
                              !Controller.checkBox1.value;
                          // setState(() {
                          //   this.valuesecond = value!;
                          // });
                        },
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 500,
                    ),
                    Text(
                      "Accept Terms & conditions",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 32,
                          color: Color(0xffFFFFFF)),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    // if(values10. == true){
                    //   return
                    // }
                    GestureDetector(
                      onTap: () {
                        print('tap');
                        if (Controller.checkBox1.value == true) {
                          Controller.emergencyMessage();
                        }
                        if (Controller.checkBox1.value == false) {
                          return Get.snackbar(
                              'Warning', 'First accept Term of condition',
                              backgroundColor: Color(0xff00327A),
                              colorText: Colors.white);
                        }
                        // Get.to(ReportOfficerScreen());
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.7,
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height / 62),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xff0064FE),
                          borderRadius: BorderRadius.all(Radius.circular(
                              MediaQuery.of(context).size.width / 70)),
                        ),
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 30.0,
                            color: primarycolor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //   ],
                // ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class FutureClass extends StatelessWidget {
  FutureClass(this.FutureMethod, this.controller);

  var FutureMethod;
  var controller;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Welcome>(
        future: FutureMethod,
        builder: (BuildContext context, snapShot) {
          if (snapShot.connectionState == ConnectionState.done) {
            if (snapShot.hasError) {
              return Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/background.png'),
                        fit: BoxFit.fill)),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else {
              return ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: snapShot.data!.data.length,
                  itemBuilder: (context, index) {
                    if (index != snapShot.data!.data.length - 1) {
                      return CustomCheck(index, snapShot.data!);
                    } else {
                      return Column(
                        children: [
                          CustomCheck(index, snapShot.data!),
                          Row(
                            children: [
                              Obx(() => Checkbox(
                                  value: controller.Other.value,
                                  onChanged: (value) {
                                    controller.Other.value =
                                        !controller.Other.value;
                                    Welcome incomingData = snapShot.data!;
                                    for (var data in incomingData.data) {
                                      data.check.value = false;
                                    }
                                    print(controller.Other.value);
                                  })),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 17,
                              ),
                              Text(
                                "Other",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 25,
                                    color: Color(0xffFFFFFF)),
                              ),
                            ],
                          ),
                          Divider(
                            height: MediaQuery.of(context).size.height / 40,
                            endIndent: MediaQuery.of(context).size.width / 120,
                            color: primarycolor,
                          ),
                          Obx(() => Visibility(
                                visible: controller.Other.value == true,
                                child: TextFormField(
                                  controller: controller.otherField,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintText: 'Other',
                                  ),
                                ),
                              )),
                        ],
                      );
                    }
                  });
            }
          } else {
            return Container(
              height: MediaQuery.of(context).size.height / 2.1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background.png'),
                      fit: BoxFit.fill)),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}

class CustomCheck extends StatelessWidget {
  Welcome incomingData;
  int index;
  final CategoriesController categoriesCheck = Get.put(CategoriesController());

  CustomCheck(this.index, this.incomingData);

  // var incomingData.data[index].check = false.obs;

  // i want to set .Obs end of the "listNearProduct" but it's not working because of Future.
  checkChange() {
    if (incomingData.data[index].check.value == false) {
      incomingData.data[index].check.value = true;
      categoriesCheck.postList.clear();
      for (var data in incomingData.data) {
        if (incomingData.data[index].id != data.id) {
          data.check.value = false;
        }
      }
      categoriesCheck.Other.value = false;
      categoriesCheck.otherField.clear();
      categoriesCheck.postList.add(incomingData.data[index].id);
      print(categoriesCheck.postList);
      print('categoriesCheck.postList');
      // incomingData.data[index].check.value.value? categoriesCheck.postList.add(incomingData.data[index].id):categoriesCheck.postList.removeWhere((element) {
      //   print(element);
      //   return element;
      // });
      print(incomingData.data[index].check.value);
    } else {
      categoriesCheck.postList
          .removeWhere((element) => element == incomingData.data[index].id);
      print(categoriesCheck.postList);
      incomingData.data[index].check.value = false;
      print(incomingData.data[index].check.value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => Checkbox(
            checkColor: primarycolor,
            activeColor: Color(0xff0064FE),
            value: incomingData.data[index].check.value,
            onChanged: (value) {
              checkChange();
            },
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 18,
        ),
        Text(
          incomingData.data[index].name,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 22,
            color: primarycolor,
          ),
        )
      ],
    );
  }
}
