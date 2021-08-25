import 'dart:io';
import 'package:record/record.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class ReportDescriptionController extends GetxController{
  var checkBool = false.obs;
  var checkBool1 = false.obs;
  var checkBool2 = false.obs;
  var checkBool3 = false.obs;
  // bool isRecording;

  // ignore: non_constant_identifier_names
  var SelectedImagePath = ''.obs;
  var SelectedImageSize = ''.obs;

  // bool result = await Record.hasPermission();
  //
  // void getRecording() async{
  //
  //   await Record.start(
  //     path: 'aFullPath/myFile.m4a',
  //     encoder: AudioEncoder.AAC,
  //     bitRate: 128000,
  //     samplingRate: 44100,
  //   );
  //   await Record.stop();
  //
  //   isRecording = await Record.isRecording();
  // }


  void getImage(ImageSource imageSource) async {

    // ignore: deprecated_member_use
    final pickedFile = await ImagePicker().getImage(source: imageSource);

    if(pickedFile != null){
      SelectedImagePath.value = pickedFile.path;
      print(SelectedImagePath.value);
      SelectedImageSize.value = ((File(SelectedImagePath.value)).lengthSync()/1024/1024).toStringAsFixed(2)+"Mb";
    } else {
      Get.snackbar('Error', 'No Image Selected',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Color(0xff00327A),
        colorText: Colors.white
      );
    }
  }


}