import 'package:civiceye/API/API.dart';
import 'package:civiceye/API/BaseUrl.dart';
import 'package:civiceye/View/NaturalDisastersScreen/NaturalDisastersScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import 'EmergencyStatusController.dart';

class EmergencyLocationController extends GetxController {
  TextEditingController MessageController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController otherEmergency = TextEditingController();
  ActiveShooter ShooterController = Get.put(ActiveShooter());

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
  var currentaddress = ''.obs;
  var center = LatLng(0.0, 0.0).obs;
  Future CurrentLoction() async {
    final location = new Location();
    Position position = await Geolocator.getCurrentPosition();
    center.value = LatLng(position.latitude, position.longitude);
    location.onLocationChanged.listen((LocationData cLoc) {
      center.value = LatLng(cLoc.latitude!, cLoc.longitude!);
    });
    GetLocationName();
  }

  GetLocationName() async {
    final coordinates =
        new Coordinates(center.value.latitude, center.value.longitude);
    var addresses =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    print(
        "${addresses[0].subLocality},${addresses[0].locality},${addresses[0].countryCode}");
    currentaddress.value =
        "${addresses[0].subLocality},${addresses[0].locality}";
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  reportSystem() async {
    try {
      isloading(true);
      var vacationsys = await API().vacationEmergencySystem(
          lat: ShooterController.center.value.latitude,
          lost: lost.value,
          other: otherEmergency.text.toString(),
          medical: Medical.value,
          long: ShooterController.center.value.longitude,
          message: MessageController.text);
      print(locationController);
      print(vacationsys);
      if (vacationsys != null) {
        BaseUrl().header = vacationsys;
        Get.snackbar('Report', 'Report save successfully',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Color(0xff00327A),
            colorText: Colors.white);
        Get.to(NaturalDisastersScreen());
      } else {
        Get.snackbar('Report', 'Report save successfully',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Color(0xff00327A),
            colorText: Colors.white);
        MessageController.clear();
        locationController.clear();
      }
    } finally {}
  }

  // geoConvert(var text) async{
  //   List locations = await locationFromAddress(text);
  //   latitude = locations[0].latitude;
  //   print(latitude);
  //   print(locations[0].latitude);
  //   print(locations[0].longitude);
  //   longitude = locations[0].longitude;
  //   print(longitude);
  // }

}
