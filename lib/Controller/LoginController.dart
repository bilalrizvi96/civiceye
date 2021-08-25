import 'package:civiceye/API/API.dart';
import 'package:civiceye/API/BaseUrl.dart';
import 'package:civiceye/View/BottomNavigation/BottomNavigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginController extends GetxController {
  var isLoading = true.obs;
  final LoginForm = GlobalKey<FormState>();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroler = TextEditingController();


  // @override
  // void onInit(){
  //   super.onInit();
  // }

  Login() async {
    try {
      if (LoginForm.currentState!.validate()) {
        isLoading(true);
        var data = await API().Login(email: emailcontroller.text
            .toString(), password: passwordcontroler.text
            .toString()
            );
        print(data);
        if (data != null) {
          BaseUrl().header = data;
          // Get.snackbar("Login", "Login Successfully",
          //  snackPosition: SnackPosition.TOP,
          //   backgroundColor: Color(0xff00327a),
          //     colorText: Colors.white
          // );
          // Get.offAll(MyHomePage());
          emailcontroller.clear();
          passwordcontroler.clear();
        } else {
          Get.snackbar('Login', data.toString(),
          // Get.snackbar("Login", "credentials is invalid",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Color(0xff00327A),
              colorText: Colors.white
          );
          // Get.snackbar("Login", data.toString());
          emailcontroller.clear();
          passwordcontroler.clear();
        }
      }
    }
    finally {
      isLoading(false);
    }
  }
  // String? validators(var values) {
  //   if(values.isEmpty){
  //     return 'Please this field must be filled';
  //   }
  //   return null;
  // }
  //
  // @override
  // void onclosed(){
  // emailcontroller.dispose();
  // passwordcontroler.dispose();
  //   super.onClose();
  // }

}
