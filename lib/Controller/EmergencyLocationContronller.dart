import 'package:civiceye/API/API.dart';
import 'package:civiceye/API/BaseUrl.dart';
import 'package:civiceye/View/NaturalDisastersScreen/NaturalDisastersScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';


class EmergencyLocationController extends GetxController{
  TextEditingController MessageController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController otherEmergency = TextEditingController();

  var isloading = true.obs;
  var lost = false.obs;
  var Medical = false.obs;
  var valuesFirst = false.obs;
  var radiogroup = false.obs;
  var other = false.obs;
  var termCondition = false.obs;
  var latitude;
  var longitude;
  var medicalEmergency;
  var checkBoxList = [].obs;
  var visibility = false.obs;




  @override
  void onInit(){
    super.onInit();
  }


  reportSystem() async {
    try{
      isloading(true);
      var vacationsys = await API().vacationEmergencySystem(lat: latitude, lost: lost.value, other: otherEmergency.text.toString(), medical: Medical.value, long: longitude, message: MessageController.text);
      print(locationController);
      print(vacationsys);
      if(vacationsys != null){
        BaseUrl().header = vacationsys;
        Get.snackbar('Report', 'Report save successfully',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Color(0xff00327A),
            colorText: Colors.white
        );
        Get.to(NaturalDisastersScreen());
      }else{
        Get.snackbar('Report', 'Report save successfully',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Color(0xff00327A),
            colorText: Colors.white
        );
        MessageController.clear();
        locationController.clear();

      }
    } finally {

    }
  }



 geoConvert(var text) async{
   List locations = await locationFromAddress(text);
   latitude = locations[0].latitude;
   print(latitude);
   print(locations[0].latitude);
   print(locations[0].longitude);
   longitude = locations[0].longitude;
   print(longitude);
 }




}