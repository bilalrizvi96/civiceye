import 'package:civiceye/API/BaseUrl.dart';
import 'package:civiceye/View/BottomNavigation/BottomNavigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:civiceye/API/API.dart';


class AddContactController extends GetxController{
  final ContactForm = GlobalKey<FormState>();

  // ignore: non_constant_identifier_names
  final TextEditingController NameController = TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController PhoneNumController = TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController NameController2 = TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController PhoneNumController2 = TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController PhoneNumberController3 = TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController NameController3 = TextEditingController();

  // ignore: non_constant_identifier_names
  var isLoading= true.obs;

  // ignore: non_constant_identifier_names
  var NameList = [];
  var numberList = [];
  var first = false.obs;
  var second = false.obs;

  @override
  void onInit(){
    super.onInit();

  }


  AddNumb() async {
    try{
      print('view');
      // if(ContactForm.currentState!.validate()){
        isLoading(true);
        print('value');
        var form =  await API().AddEmergencyContact(name: NameList, number: numberList);
        if(form != null){
          BaseUrl().header = form;
        }else{
          Get.snackbar('Contact Form', 'Emergency numbers added successfully',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Color(0xff00327A),
            colorText: Colors.white
          );
          Get.put(MyHomePage());
          NameController.clear();
          PhoneNumController.clear();
          NameController2.clear();
          PhoneNumController2.clear();
          NameController3.clear();
          PhoneNumberController3.clear();
          NameList.clear();
          numberList.clear();
        }
      }
    // }
    finally{
      isLoading(false);
    }

  }
  
  
  addtoList() {
    NameList.clear();
    numberList.clear();
    print('check text');
    // ignore: unnecessary_null_comparison
    if(NameController.text.isNotEmpty){
      NameList.add(NameController.text);
    }
    // ignore: unnecessary_null_comparison
    if (PhoneNumController.text.isNotEmpty){
      numberList.add(PhoneNumController.text);
    }
    //ignore: unnecessary_null_comparison
    if (NameController2.text.isNotEmpty){
      NameList.add(NameController2.text);
    }
    // ignore: unnecessary_null_comparison
    if(PhoneNumController2.text.isNotEmpty){
      numberList.add(PhoneNumController2.text);
    }
    // ignore: unnecessary_null_comparison
    if(NameController3.text.isNotEmpty){
      NameList.add(NameController3.text);
    }
    // ignore: unnecessary_null_comparison
    if(PhoneNumberController3.text.isNotEmpty){
      numberList.add(PhoneNumberController3.text);
    }
    print(numberList);
    print(NameList);
    AddNumb();
  }

  String? validaors(var values) {
    if(values.isEmpty){
      return 'Please this field must be filled';
    }
    return null;
  }


}