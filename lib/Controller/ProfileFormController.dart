import 'package:civiceye/API/API.dart';
import 'package:civiceye/API/BaseUrl.dart';
import 'package:civiceye/View/BottomNavigation/BottomNavigation.dart';
import 'package:civiceye/View/ProfilePageScreen/ProfilePageScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileFormController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  var asd = false.obs;
  var second = false.obs;
  var namelist = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  var numberList = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  var emergencyList = [].obs;
  var isloading = false.obs;
  final editForm = GlobalKey<FormState>();

  UpdateProfile() async {
    try {
      // if(editForm.currentState!.validate()){
      print('list view');
      isloading(true);
      {
      var update = await API().EditProfile(
          ProfileName: nameController.text,
          email: emailController.text,
          mobile_no: phonenumberController.text,
          address: addressController.text,
          ListName: namelist,
          ListNumber: numberList);
        if(update != null){
          BaseUrl().header = update;
          Get.snackbar("Update Profile", "updated successfully",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Color(0xff00327a),
            colorText: Colors.white
          );
          Get.offAll(MyHomePage());
          nameController.clear();
          emailController.clear();
          phonenumberController.clear();
          addressController.clear();
          // namelist.clear();
          // numberList.clear();
        }
      print(update);
      print(numberList);
      print('view number of list is three');
      print(namelist);
      print('view name of list is three');
    }
    } finally {

    }
  }
}
