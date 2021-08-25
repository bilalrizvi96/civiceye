import 'package:civiceye/API/API.dart';
import 'package:civiceye/API/BaseUrl.dart';
import 'package:civiceye/View/BottomNavigation/BottomNavigation.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';


class SignUpController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobile_noController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController confirm_passController = TextEditingController();

  final SignUpKeyForm = GlobalKey<FormState>();
var isLoading = true.obs;

  @override
 void onInit() {
    super.onInit();
  }

  Singups () async {
    try{
      if(SignUpKeyForm.currentState!.validate()) {
          isLoading(true);
          var headers = await API().SignUp(email: emailController.text.toString(),
              mobile_no: mobile_noController.text.toString(),name: nameController.text.toString(), password: passwordController.text.toString(),
              address: addressController.text.toString(),confirm_pass: confirm_passController.text.toString());
          if(headers != null) {
            BaseUrl().header = headers;
            Get.snackbar("SignUp", "SignUp is Successfully");
            Get.offAll(MyHomePage());
          }
          else {
            Get.offAll(MyHomePage());
          }
      }
    }
    finally{
      isLoading(false);
    }
  }
  String? validaors(var values) {
    if(values.isEmpty){
      return 'Please this field must be filled';
    }
    return null;
  }
  @override
  void onClose(){
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    confirm_passController.dispose();
    addressController.dispose();
    mobile_noController.dispose();
    super.onClose();
  }
}