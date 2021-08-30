import 'dart:async';
import 'dart:convert';

import 'package:civiceye/Controller/EmergencyStatusController.dart';
import 'package:civiceye/Models/CityModel.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

class MapController extends GetxController {
  // AllResturantsController controller = Get.put(AllResturantsController());
  ActiveShooter controller = Get.put(ActiveShooter());

  var markerposition = LatLng(0, 0).obs;
  var cameraZoom = 18.0.obs;
  var CAMERA_TILT = 10.0.obs;
  var CAMERA_BEARING = 30.0.obs;

  Rx<CityModel> placeList = CityModel(predictions: [], status: "").obs;
  var visibility = false.obs;
  var controllers = Completer().obs;

  @override
  void onInit() {
    // visibility.value e;
    markerposition.value = controller.center.value;
    placeList = CityModel(predictions: [], status: "").obs;
  }

  updatelatlong(var pos) {
    markerposition.value = pos;
    update();
  }

  // LatLng location = LatLng(24.8607, 67.0011);
  var uuid = Uuid(options: {'grng': UuidUtil.cryptoRNG});

  void getSuggestion(String input) async {
    var _sessionToken = uuid.v4();
    String kPLACES_API_KEY = "AIzaSyCPDZxZYp3Su6ReZTh4lHRoie6HAM2P0sU";
    // String type = '(regions)';
    String baseURL =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json';
    String request =
        '$baseURL?input=$input&key=$kPLACES_API_KEY&sessiontoken=$_sessionToken';
    var response = await http.get(Uri.parse(request));
    if (response.statusCode == 200) {
      // print(CityModel.fromJson(response.body).runtimeType);
      placeList.value = CityModel(
          status: "OK", predictions: json.decode(response.body)['predictions']);
      if (placeList.value.predictions!.isNotEmpty) {
        print(placeList.value.toString());
        visibility.value = true;
        update();
      } else {
        visibility.value = false;
        update();
      }
      // log(response.body);
    } else {
      throw Exception('Failed to load predictions');
    }
    update();
  }

  geoconverter(var index) async {
    List<Location> locations = await locationFromAddress(
        placeList.value.predictions![index]["description"].toString());
    print(locations[0].latitude);
    markerposition.value =
        LatLng(locations[0].latitude, locations[0].longitude);
    visibility.value = false;
    final GoogleMapController controller = await controllers.value.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        zoom: cameraZoom.value,
        tilt: CAMERA_TILT.value,
        bearing: CAMERA_BEARING.value,
        target: markerposition.value)));
    update();
  }

  savelocation() async {
    final coordinates = new Coordinates(
        markerposition.value.latitude, markerposition.value.longitude);
    var addresses =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses.first;
    // var test = await API().SavedLocations(
    //     lat: markerposition.value.latitude,
    //     long: markerposition.value.longitude,
    //     address: first.addressLine);
    controller.currentaddress.value = first.addressLine.toString();
    controller.center(
        LatLng(markerposition.value.latitude, markerposition.value.longitude));

    // controller.getsavedlocations();
    // if (test == true) {
    Get.back();
    // }
    update();
  }
}
