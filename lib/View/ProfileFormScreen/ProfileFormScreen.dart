import 'package:civiceye/API/API.dart';
import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:civiceye/Controller/ProfileFormController.dart';
import 'package:civiceye/View/BottomNavigation/BottomNavigation.dart';
import 'package:civiceye/View/ProfilePageScreen/ProfilePageScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileFormScreen extends StatelessWidget {
  // ProfileFormScreen({Key? key}) : super(key: key);
  // ignore: non_constant_identifier_names
  var name, email, phonenumber, address, EmergencyNumber;

  // ignore: non_constant_identifier_names
  ProfileFormScreen(
      {this.email,
      this.address,
      this.name,
      this.phonenumber,
      this.EmergencyNumber});

  // ignore: non_constant_identifier_names
  ProfileFormController UpdataProf = Get.put(ProfileFormController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 23, right: 23),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.fill)),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: UpdataProf.editForm,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30, left: 10, right: 10),
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
                              letterSpacing: 1.2),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 100,
                        ),
                        Text(
                          'EYE',
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 18,
                              color: yallowcolor,
                              letterSpacing: 1.2),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 19,
                          fontWeight: FontWeight.w600,
                          color: primarycolor),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 12,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: TextFormField(
                      onChanged: (name) => {
                        print(name),
                        // nameUpdate = name,
                        print('view edit name'),
                      },
                      controller: UpdataProf.nameController,
                      // initialValue: '',
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Name',
                          labelStyle: TextStyle(
                              height: 2.0,
                              color: Color(0xffB6B7B7),
                              fontSize: MediaQuery.of(context).size.width / 25),
                          contentPadding: EdgeInsets.only(
                            left: 40,
                            right: 20,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 12,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: TextFormField(
                      controller: UpdataProf.emailController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              height: 2.0,
                              color: Color(0xffB6B7B7),
                              fontSize: MediaQuery.of(context).size.width / 25),
                          contentPadding: EdgeInsets.only(
                            left: 40,
                            right: 20,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 12,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: TextFormField(
                      controller: UpdataProf.phonenumberController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(
                              height: 2.0,
                              color: Color(0xffB6B7B7),
                              fontSize: MediaQuery.of(context).size.width / 25),
                          contentPadding: EdgeInsets.only(
                            left: 40,
                            right: 20,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 12,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: TextFormField(
                      controller: UpdataProf.addressController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Address',
                          labelStyle: TextStyle(
                              height: 2.0,
                              color: Color(0xffB6B7B7),
                              fontSize: MediaQuery.of(context).size.width / 25),
                          contentPadding: EdgeInsets.only(
                            left: 40,
                            right: 20,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  ListView.separated(
                      // scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      // itemCount: UpdataProf.emergencyList.value.length,
                      // ignore: unnecessary_null_comparison
                      itemCount: UpdataProf.emergencyList.value == null
                          ? 0
                          : UpdataProf.emergencyList.value.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          Divider(
                            height: 15,
                          ),
                      itemBuilder: (BuildContext context, index) {
                        if (UpdataProf.asd.value == false) {
                          UpdataProf.namelist[index].text =
                              // ignore: invalid_use_of_protected_member
                              UpdataProf.emergencyList.value[index].name;
                          print(UpdataProf.emergencyList.value);
                          UpdataProf.numberList[index].text =
                              // ignore: invalid_use_of_protected_member
                              UpdataProf.emergencyList.value[index].number;
                          print(UpdataProf.numberList);
                          // UpdataProf.asd.value=true;
                        }
                        print(UpdataProf.namelist);
                        print(UpdataProf.numberList);
                        print('view the list of names and list of number');
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 5.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ///  List of daynamic Text field in update porfile screen
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 12,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  ),
                                  child: TextFormField(
                                    controller: UpdataProf.namelist[index],
                                    onChanged: (val) {
                                      UpdataProf.asd.value = true;
                                    },
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        labelText: 'Emergency Contact Name #',
                                        labelStyle: TextStyle(
                                            height: 2.0,
                                            color: Color(0xffB6B7B7),
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                25),
                                        contentPadding: EdgeInsets.only(
                                          left: 40,
                                          right: 20,
                                        )),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 12,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  ),
                                  child: TextFormField(
                                    controller: UpdataProf.numberList[index],
                                    onChanged: (val) {
                                      UpdataProf.asd.value = true;
                                    },
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        labelText: 'Emergency Contact Number #',
                                        labelStyle: TextStyle(
                                            height: 2.0,
                                            color: Color(0xffB6B7B7),
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                25),
                                        contentPadding: EdgeInsets.only(
                                          left: 40,
                                          right: 20,
                                        )),
                                  ),
                                ),
                              ],
                            ));
                      }),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      UpdataProf.UpdateProfile();
                      // Get.to(ProfilePageScreen());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height / 42),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xff6F8B3E),
                        borderRadius: BorderRadius.all(Radius.circular(
                            MediaQuery.of(context).size.width / 5)),
                      ),
                      child: Text(
                        'Update',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 23.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 80,
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
