import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:civiceye/Controller/MapController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatelessWidget {
  // ActiveShooter controller = Get.put(ActiveShooter());
  MapController mapControllers = Get.put(MapController());

  @override
  Widget build(BuildContext context) {
    var initialCameraPosition = CameraPosition(
            zoom: mapControllers.cameraZoom.value,
            tilt: mapControllers.CAMERA_TILT.value,
            bearing: mapControllers.CAMERA_BEARING.value,
            target: LatLng(mapControllers.markerposition.value.latitude,
                mapControllers.markerposition.value.longitude))
        .obs;
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GetBuilder(
              init: mapControllers,
              builder: (_) => GoogleMap(
                  myLocationEnabled: false,
                  compassEnabled: false,
                  tiltGesturesEnabled: false,
                  mapType: MapType.normal,
                  myLocationButtonEnabled: false,
                  markers: Set<Marker>.of(
                    <Marker>[
                      Marker(
                        draggable: true,
                        markerId: MarkerId("1"),
                        position: LatLng(
                            mapControllers.markerposition.value.latitude,
                            mapControllers.markerposition.value.longitude),
                        icon: BitmapDescriptor.defaultMarker,
                        onDragEnd: ((newPosition) {
                          print(newPosition.latitude);
                          print(newPosition.longitude);
                        }),

                        // infoWindow: const InfoWindow(
                        //   title: 'Usted está aquí',
                        // ),
                      )
                    ],
                  ),
                  initialCameraPosition: initialCameraPosition.value,
                  onCameraMove: (CameraPosition x) {
                    mapControllers.updatelatlong(x.target);
                  },
                  // onTap: (LatLng loc) {
                  //
                  // },
                  onMapCreated: (GoogleMapController controller) {
                    mapControllers.controllers.value.complete(controller);
                  }),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 50),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (val) {
                    mapControllers.getSuggestion(val);
                  },
                  // controller: controller.emailController,
                  // validator: (value) {
                  // if (emailValid.hasMatch(
                  //     controller.emailController.text) ==
                  //     false) {
                  //   return 'Enter correct email';
                  // }
                  // return null;
                  // },
                  decoration: new InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: primarycolor,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.black),
                    hintText: "Enter Location",
                  ),
                ),
                GetBuilder(
                    init: mapControllers,
                    builder: (_) {
                      return Visibility(
                          visible: mapControllers.visibility.value,
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: mapControllers
                                    .placeList.value.predictions!.length,
                                itemBuilder: (_, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      mapControllers.geoconverter(index);
                                      // controller.currentlocation.value =
                                      //     mapControllers
                                      //         .placeList
                                      //         .value
                                      //         .predictions![index]
                                      //             ["description"]
                                      //         .toString();
                                    },
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(mapControllers
                                            .placeList
                                            .value
                                            .predictions![index]["description"]
                                            .toString()),
                                      ),
                                    ),
                                  );
                                }),
                          ));
                    }),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    // controller.login();
                    mapControllers.savelocation();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: MediaQuery.of(context).size.height / 15,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: primarycolor.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: Offset(3, 5), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                          child: Text(
                        "Save".toUpperCase(),
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 30,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
