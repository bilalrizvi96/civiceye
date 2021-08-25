import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:civiceye/Controller/ReportDescriptionController.dart';
import 'package:civiceye/View/AddNewContactScreen/AddNewContactScreen.dart';
import 'package:civiceye/View/NaturalDisastersScreen/NaturalDisastersScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class ReportDescriptionScreen extends StatelessWidget {
  // const ReportDescriptionScreen({Key? key}) : super(key: key);
  // final CheckBoxController ctrl = Get.put(CheckBoxController());
  ReportDescriptionController reportDescription = Get.put(ReportDescriptionController());
  // bool valuefirst = false;
  // bool values1 = false;
  bool values2 = false;
  bool values3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.fill
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back,
                        size: MediaQuery.of(context).size.width/13,
                        color: yallowcolor,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/3.8,
                    ),
                    Text("CIVIC",
                      style: TextStyle(
                          color: primarycolor,
                          fontSize: MediaQuery.of(context).size.width/18
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/100,
                    ),
                    Text("EYE",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width/18,
                          color: yallowcolor
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height/1.12,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height/20,
                        ),
                        Row(
                          children: [
                            Obx(() => Checkbox(
                                checkColor: primarycolor,
                                activeColor: Color(0xff0064FE),
                                value: reportDescription.checkBool.value,
                                onChanged: (value) {
                                  reportDescription.checkBool.value = !reportDescription.checkBool.value;
                                  print(reportDescription.checkBool.value);
                                  // setState(() {
                                  //   this.valuefirst = value!;
                                  // });
                                },
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width/18,
                            ),
                            Text("Use Current Location",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width/22,
                                color: primarycolor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/50,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.location_on,
                              size: MediaQuery.of(context).size.width/14,
                              color: Color(0xffFF0000),
                            ),
                            suffixIcon:
                            // height: MediaQuery.of(context).size.height/20,
                            // width: MediaQuery.of(context).size.width/10,
                            Image(
                              image: AssetImage("assets/MyLocation.png"),
                              // fit: BoxFit.fitWidth,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "location",
                            // contentPadding: EdgeInsets.all(23),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    MediaQuery.of(context).size.height/70
                                ))
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/20,
                        ),
                        // Text('${reportDescription.SelectedImagePath}'),
                        GestureDetector(
                          onTap: () {
                            Get.bottomSheet(
                              Container(
                                color: Color(0xff00327A),
                                height: MediaQuery.of(context).size.height/4.5,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                        onTap: (){
                                          reportDescription.getImage(ImageSource.camera);
                                          Navigator.of(context, rootNavigator: true).pop('dialog');
                                        },
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width/10,
                                            ),
                                            Icon(Icons.camera_alt_outlined,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width/25,
                                            ),
                                            Text('Camera',
                                              style: TextStyle(
                                                fontSize: MediaQuery.of(context).size.width/20,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        )
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        reportDescription.getImage(ImageSource.gallery);
                                        Navigator.of(context, rootNavigator: true).pop('dialog');
                                      },
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context).size.width/10,
                                          ),
                                          Icon(Icons.image,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context).size.width/25,
                                          ),
                                          Text("Gallery",
                                            style: TextStyle(
                                              fontSize: MediaQuery.of(context).size.width/20,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      )
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          // reportDescription.getImage(ImageSource.gallery);
                                          Navigator.of(context, rootNavigator: true).pop('dialog');
                                        },
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width/10,
                                            ),
                                            Icon(Icons.clear,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width/25,
                                            ),
                                            Text("Cancel",
                                              style: TextStyle(
                                                fontSize: MediaQuery.of(context).size.width/20,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        )
                                    ),
                                  ],
                                ),
                              ),
                              enableDrag: true,
                              isDismissible: true,
                            );
                          },
                          child: Row(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height/17,
                                width: MediaQuery.of(context).size.width/9,
                                child: CircleAvatar(
                                    backgroundColor: Color(0xffAEADC2),
                                    child: Icon(Icons.camera_alt_outlined,
                                      color: Color(0xffFFFFFF),
                                    )
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/19,
                              ),
                              Text("CAMERA",
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width/23,
                                  color: primarycolor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: MediaQuery.of(context).size.height/18,
                          indent: 2,
                          endIndent: 2,
                          thickness: 1,
                          color: primarycolor,
                        ),
                        Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height/17,
                              width: MediaQuery.of(context).size.width/9,
                              child: CircleAvatar(
                                  backgroundColor: Color(0xffAEADC2),
                                  child: Icon(Icons.video_call,
                                    color: Color(0xffFFFFFF),
                                  )
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width/19,
                            ),
                            Text("VIDEOS",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width/23,
                                color: primarycolor,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: MediaQuery.of(context).size.height/18,
                          indent: 2,
                          endIndent: 2,
                          thickness: 1,
                          color: primarycolor,
                        ),
                        Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height/17,
                              width: MediaQuery.of(context).size.width/9,
                              child: CircleAvatar(
                                  backgroundColor: Color(0xffAEADC2),
                                  child: Icon(Icons.audiotrack,
                                    color: Color(0xffFFFFFF),
                                  )
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width/19,
                            ),
                            Text("AUDIO",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width/23,
                                color: primarycolor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/30,
                        ),
                        Text("Description",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width/23,
                              color: primarycolor
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/80,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/5,
                          width: MediaQuery.of(context).size.width,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(
                                  MediaQuery.of(context).size.width/70
                              ),)
                          ),
                          child: TextField(
                            maxLines: 10,
                            decoration: InputDecoration(
                                hintText: " Critical Emergency Message",
                              contentPadding: EdgeInsets.all(10.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/50,
                        ),
                        Row(
                          children: [
                            Obx(() => Checkbox(
                                // checkColor: Color(0xff0064FE),
                                activeColor: Color(0xff0064FE),
                                value: reportDescription.checkBool1.value,
                                onChanged: (value) {
                                  reportDescription.checkBool1.value = !reportDescription.checkBool1.value;
                                  print(reportDescription.checkBool1.value);
                                  // setState(() {
                                  //   this.values1 = value!;
                                  // });
                                },
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width/48,
                            ),
                            Text("Victim",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width/22,
                                color: primarycolor,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Obx(() => Checkbox(
                                // checkColor: Color(0xff0064FE),
                                activeColor: Color(0xff0064FE),
                                value: reportDescription.checkBool2.value,
                                onChanged: (value) {
                                  reportDescription.checkBool2.value = !reportDescription.checkBool2.value;
                                  // setState(() {
                                  //   this.values2 = value!;
                                  // });
                                },
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width/48,
                            ),
                            Text("Spectator",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width/22,
                                color: primarycolor,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Obx(() => Checkbox(
                                // checkColor: Color(0xff0064FE),
                                activeColor: Color(0xff0064FE),
                                value: reportDescription.checkBool3.value,
                                onChanged: (value) {
                                  reportDescription.checkBool3.value = !reportDescription.checkBool3.value;
                                  // setState(() {
                                  //   this.values3 = value!;
                                  // });
                                },
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width/48,
                            ),
                            Text("Anonymous",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width/22,
                                color: primarycolor,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/130,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            // prefixIcon: Icon(Icons.location_on,
                            //   size: MediaQuery.of(context).size.width/14,
                            //   color: Color(0xffFF0000),
                            // ),
                            // suffixIcon:
                            // height: MediaQuery.of(context).size.height/20,
                            // width: MediaQuery.of(context).size.width/10,
                            // Image(
                            //   image: AssetImage("assets/MyLocation.png"),
                            //   // fit: BoxFit.fitWidth,
                            // ),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Name",
                            // contentPadding: EdgeInsets.all(23),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(
                                MediaQuery.of(context).size.height/70
                              ))
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/60,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "email",
                            // contentPadding: EdgeInsets.all(23),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    MediaQuery.of(context).size.height/70
                                ))
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/60,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Phone",
                            // contentPadding: EdgeInsets.all(23),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    MediaQuery.of(context).size.height/70
                                ))
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/60,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Great Job",
                            // contentPadding: EdgeInsets.all(23),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    MediaQuery.of(context).size.height/70
                                ))
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/60,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Misconduct",
                            // contentPadding: EdgeInsets.all(23),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    MediaQuery.of(context).size.height/70
                                ))
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width/3.5,
                                padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/62),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xff0064FE),
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      MediaQuery.of(context).size.width/70
                                  )
                                  ),
                                ),
                                child: Text('Draft',
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/30.0,
                                    color: primarycolor,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width/3.5,
                              padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/62),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff0064FE),
                                borderRadius: BorderRadius.all(Radius.circular(
                                    MediaQuery.of(context).size.width/70
                                )
                                ),
                              ),
                              child: Text('Submit',
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width/30.0,
                                  color: primarycolor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/40,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
