import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:civiceye/Controller/AddNewContactController.dart';
import 'package:civiceye/View/ReferenceUseScreen/ReferenceUseScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewContactScreen extends StatelessWidget {
  AddNewContactScreen({Key? key}) : super(key: key);

  final AddContactController addEmergencyContact =
      Get.put(AddContactController());

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
          child: Form(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0),
                    child: Row(
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Text(
                    "Your Contacts",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 18,
                        color: primarycolor,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('OnTap');
                      if (addEmergencyContact.first.value &&
                          addEmergencyContact.second.value) {
                        Get.snackbar('Sorry',
                            "Maximum three emergency contacts are allowed",
                            snackPosition: SnackPosition.TOP,
                            backgroundColor: Color(0xff00327a),
                            colorText: Colors.white);
                      }
                      addEmergencyContact.first.value == true
                          ? addEmergencyContact.second.value = true
                          : addEmergencyContact.first.value = true;

                      print(addEmergencyContact.first.value);
                      // if(addEmergencyContact.first.value == true){
                      //   return print(addEmergencyContact.second.value);
                      // // } else if(addEmergencyContact.second.value == true){
                      // //   return print(addEmergencyContact.first.value);
                      // }
                      // addEmergencyContact.first.value =
                      //     !addEmergencyContact.first.value;
                      // addEmergencyContact.second.value = !addEmergencyContact.second.value;
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          size: MediaQuery.of(context).size.width / 15,
                          color: Color(0xffF8CE00),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 23,
                        ),
                        Text(
                          " Add a new contact",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 23,
                              color: Color(0xffF8CE00),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: addEmergencyContact.NameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please check your Name';
                      }
                      return null;
                    },
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
                    height: MediaQuery.of(context).size.height / 100,
                  ),
                  TextFormField(
                    controller: addEmergencyContact.PhoneNumController,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value!.isEmpty &&
                          addEmergencyContact.PhoneNumController.text.length <
                              9) {
                        print('check mobile Number');
                        return 'Please Enter the Phone Number';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Number",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w800, letterSpacing: 1.2),
                      // contentPadding: EdgeInsets.all(23),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              MediaQuery.of(context).size.height / 70))),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Obx(() => Visibility(
                        visible: addEmergencyContact.first.value,
                        child: Column(
                          children: [
                            TextFormField(
                              keyboardType: TextInputType.text,
                              controller: addEmergencyContact.NameController2,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please check your Name';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "Name",
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 1.2),
                                // contentPadding: EdgeInsets.all(23),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            MediaQuery.of(context).size.height /
                                                70))),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 100,
                            ),
                            TextFormField(
                              controller:
                                  addEmergencyContact.PhoneNumController2,
                              keyboardType: TextInputType.phone,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter the Phone Number';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "Number",
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 1.2),
                                // contentPadding: EdgeInsets.all(23),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            MediaQuery.of(context).size.height /
                                                70))),
                              ),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Obx(() => Visibility(
                      visible: addEmergencyContact.second.value,
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.text,
                            controller: addEmergencyContact.NameController3,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please check your Name';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Name",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1.2),
                              // contentPadding: EdgeInsets.all(23),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          MediaQuery.of(context).size.height /
                                              70))),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 100,
                          ),
                          TextFormField(
                            controller:
                                addEmergencyContact.PhoneNumberController3,
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please Enter the Phone Number';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Number",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1.2),
                              // contentPadding: EdgeInsets.all(23),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          MediaQuery.of(context).size.height /
                                              70))),
                            ),
                          ),
                        ],
                      ))),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('data');
                      addEmergencyContact.addtoList();
                      // Get.to(ReferenceUseScreen());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3.5,
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 1.6),
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height / 55),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xff0064FE),
                        borderRadius: BorderRadius.all(Radius.circular(
                            MediaQuery.of(context).size.width / 60)),
                      ),
                      child: Text(
                        'Add',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 30.0,
                            color: primarycolor,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.2),
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
