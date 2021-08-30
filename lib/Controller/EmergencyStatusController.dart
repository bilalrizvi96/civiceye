import 'package:civiceye/API/API.dart';
import 'package:civiceye/API/BaseUrl.dart';
import 'package:civiceye/View/BottomNavigation/BottomNavigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

class ActiveShooter extends GetxController {
  // var addresses, currentaddress;
  var latitude;
  var longitude;
  var Safe = false.obs;
  // var textfield = false.obs;
  var UserSafe = false.obs;
  var current_shooter_situation = false.obs;
  TextEditingController ContactNumbController = TextEditingController();
  TextEditingController Message = TextEditingController();
  TextEditingController locationController = TextEditingController();
  final activeShooter = GlobalKey<FormState>();
  var isloading = true.obs;
  var acceptterm = false.obs;
  var currentaddress = ''.obs;
  var visibility = false.obs;
  // Rx<CityModel> placeList = CityModel(predictions: [], status: "").obs;
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
    Safe = false.obs;
    UserSafe = false.obs;
    current_shooter_situation = false.obs;
    CurrentLoction();
    // placeList = CityModel(predictions: [], status: "").obs;
  }

  var uuid = Uuid(options: {'grng': UuidUtil.cryptoRNG});

  ActiveshooterInfo() async {
    try {
      isloading(true);
      var activeshooter = await API().activeshooter(
          contactNo: ContactNumbController.text.toString(),
          safe: Safe.value.toString(),
          message: Message.text.toString(),
          ActiveShooter: current_shooter_situation.value.toString(),
          lat: center.value.latitude.toString(),
          long: center.value.longitude.toString());
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

  // geoconverter(var text) async {
  //   print(text);
  //   List locations = await locationFromAddress(text);
  //   latitude = locations[0].latitude;
  //   print(latitude);
  //   print(locations[0].latitude);
  //   print(locations[0].longitude);
  //   longitude = locations[0].longitude;
  //   print(longitude);
  // }

  // void GetLocationName() async{
  //   var coordinates = new Coordinates(, geoconverter().longitude);
  //     addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);
  //   print(
  //     '${addresses[2].subLocality}, ${addresses[2].locality}, ${addresses[2].countryCode}');
  //   currentaddress =
  //     "${addresses[2].subLocality}, ${addresses[2]}, ${addresses[2].countryCode}";
  // }

}
