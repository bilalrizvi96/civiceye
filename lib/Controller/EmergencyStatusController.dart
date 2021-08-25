import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:civiceye/API/API.dart';
import 'package:civiceye/API/BaseUrl.dart';
import 'package:civiceye/View/BottomNavigation/BottomNavigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';

class ActiveShooter extends GetxController {
var addresses, currentaddress;
  var latitude;
  var longitude;
  var Safe = false.obs;
  var UserSafe = false.obs;
  var current_shooter_situation = false.obs;
  TextEditingController ContactNumbController = TextEditingController();
  TextEditingController Message = TextEditingController();
  TextEditingController locationController = TextEditingController();
  final activeShooter = GlobalKey<FormState>();
  var isloading = true.obs;
  var acceptterm = false.obs;

  @override
  void onInit() {
    super.onInit();
    Safe = false.obs;
    UserSafe = false.obs;
    current_shooter_situation = false.obs;
  }

  ActiveshooterInfo() async {
    try {
      isloading(true);
      var activeshooter = await API().activeshooter(
          contactNo: ContactNumbController.text.toString(),
          safe: Safe.value.toString(),
          message: Message.text.toString(),
          ActiveShooter: current_shooter_situation.value.toString(),
          lat: latitude.toString(),
          long: longitude.toString());
      print(locationController.text);

      print('view location');
      if (activeshooter != null) {
        BaseUrl().header = activeshooter;
        Get.snackbar('Report', 'Report save successfully',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Color(0xff00327A),
            colorText: Colors.white);
        Get.put(MyHomePage());
      } else {
        Get.snackbar('Report', 'Report save successfully',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Color(0xff00327A),
            colorText: Colors.white);
        ContactNumbController.clear();
        Message.clear();
        locationController.clear();
      }
      // for(int i=0; i< activeshooter.length;i++){
      //   activeShooter[i].activeshooter = false;
      // }
      // for(int i=0, i<istname.length;i++){
      //   listname[i].selected=false;
      // }
    } finally {}
  }

  geoconverter(var text) async {
    print(text);
    List locations = await locationFromAddress(text);
    latitude = locations[0].latitude;
    print(latitude);
    print(locations[0].latitude);
    print(locations[0].longitude);
    longitude = locations[0].longitude;
    print(longitude);
  }

  // void GetLocationName() async{
  //   var coordinates = new Coordinates(, geoconverter().longitude);
  //     addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);
  //   print(
  //     '${addresses[2].subLocality}, ${addresses[2].locality}, ${addresses[2].countryCode}');
  //   currentaddress =
  //     "${addresses[2].subLocality}, ${addresses[2]}, ${addresses[2].countryCode}";
  // }

}
