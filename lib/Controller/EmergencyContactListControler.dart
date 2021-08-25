import 'package:civiceye/API/API.dart';
import 'package:civiceye/API/BaseUrl.dart';
import 'package:civiceye/View/BottomNavigation/BottomNavigation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CategoriesController extends GetxController {
  var Hurricane = false.obs;
  var Tornado = false.obs;
  var Earthquake = false.obs;
  var Flood = false.obs;
  var Forest = false.obs;
  var Wind = false.obs;
  var Blizzard = false.obs;
  var Other = false.obs;
  var visibble = false.obs;
  var latitude;
  var longitude;
  final TextEditingController EmergencyMessage = TextEditingController();
  final TextEditingController otherField = TextEditingController();

  final categoryForm = GlobalKey<FormState>();
  var isloading = true.obs;

  var listCategories;
  var postList=[].obs;
  var checkBox1 = false.obs;

  @override
  void onInit(){
    super.onInit();
    // FetchCategoriesList();

  }

  FetchCategoriesList() async {
    listCategories = await API().reportCategories();
    return true;
  }




  emergencyMessage()  {
    try{print('data');
    determinePosition().then((value) {
      latitude = value.latitude;
      print(latitude);
      longitude = value.longitude;
      print(longitude);
    });
    print(determinePosition());
      // if(categoryForm.currentState!.validate()){
        isloading(true);
        print('data with out');
        var data =  API().categorySend(message: EmergencyMessage.text.toString().obs, long: longitude, lat: latitude, report_category_id: postList, otherfield: otherField.text.toString().obs);
        if(data != null){
          BaseUrl().header = data;
          Get.snackbar("Message", 'Message are send');
          EmergencyMessage.clear();
          otherField.clear();
          Get.to(MyHomePage());
        } else{
          Get.snackbar('Message', data.toString());
          otherField.clear();
          EmergencyMessage.clear();
        }
      // }
    }catch(e){

    }
  }

  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.

    return await Geolocator.getCurrentPosition();
  }

}