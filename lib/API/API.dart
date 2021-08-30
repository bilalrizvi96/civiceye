import 'dart:collection';

// import 'dart:html';

import 'package:civiceye/API/BaseUrl.dart';
import 'package:civiceye/Models/NaturalDisastersModel.dart';
import 'package:civiceye/Models/ProfileModel.dart';
import 'package:civiceye/View/BottomNavigation/BottomNavigation.dart';
import 'package:civiceye/View/LoginScreen/LoginScreen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class API {
  var sp = GetStorage();

  SignUp(
      {var email,
      var name,
      var password,
      var address,
      // ignore: non_constant_identifier_names
      var confirm_pass,
      // ignore: non_constant_identifier_names
      var mobile_no}) async {
    Dio dio = new Dio();
    Map<String, dynamic> hashmap = new HashMap();
    hashmap['email'] = email.toString();
    hashmap['name'] = name.toString();
    hashmap['mobile_no'] = "+"+mobile_no.toString();
    hashmap['address'] = address.toString();
    hashmap['confirm_pass'] = confirm_pass.toString();
    hashmap['password'] = password.toString();

    dynamic reponse = await dio
        .post(BaseUrl().baseurl + 'register',
            data: hashmap,
            options:
                Options(headers: {Headers.acceptHeader: "application/json"}))
        .catchError(onError);
    print(reponse);
    try {
      if (reponse.statusCode == 200) {
        print(reponse.data);
        var accesstoken = reponse.data['data']['token'];
        print("Access Token" + accesstoken);
        sp.write("token", "Bearer" + " " + accesstoken);
        print(sp.read('token'));
        Get.off(MyHomePage());
        // SignUpModel.fromJson(reponse.data);
        return accesstoken;
      } else {
        var error = reponse.data['error'].value.toString();
        return error;
      }
    } catch (e) {
      var error = e;
      print(error);
      return error;
    }
  }

  Login({var email, var password}) async {
    Dio dio = new Dio();
    Map<String, dynamic> hashmap = new HashMap();
    hashmap['email'] = email.toString();
    hashmap['password'] = password.toString();
    print(hashmap);
    var response = await dio
        .post(BaseUrl().baseurl + 'login',
            data: hashmap,
            options:
                Options(headers: {Headers.acceptHeader: 'application/json'}))
        .catchError(onErrors);
    print(response);
    try {
      if (response.statusCode == 200) {
        print(response.data);
        var accesstoken = response.data['data']['token'];
        print("access token" + accesstoken);
        sp.write("token", "Bearer" + " " + accesstoken);
        Get.snackbar("Login", "Login Successfully",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Color(0xff00327a),
            colorText: Colors.white);
        Get.off(MyHomePage());
        print(sp.read('token'));
        // LoginModel.formJson(response.data);
        return accesstoken;
      }
      if (response.statusCode == 401) {
        var error = response.data['error'].value.toString();
        Get.snackbar('Login', 'Invild credentional');
        // error.replaceAll('([', "");
        // error.replaceAll("])", "");
        // Get.snackbar("Login", error.toString());
        return error;
      }
    } catch (e) {
      var error = e;
      return error;
    }
  }

  Future<Welcome> reportCategories() async {
    Dio dio = new Dio();
    var token = sp.read('token');
    print(token);
    var res = await dio
        .get(BaseUrl().baseurl + 'get-report-cats',
            options: Options(headers: {
              Headers.acceptHeader: 'application/json',
              'authorization': token,
            }))
        .catchError(onError);
    print(res);
    if (res.statusCode == 200) {
      print(res.data);
      return welcomeFromJson(res.data);
    } else {
      return welcomeFromJson(res.data);
    }
  }

  // ignore: non_constant_identifier_names
  categorySend(
      {var message,
      var report_category_id,
      var otherfield,
      var long,
      var lat}) async {
    Dio dio = new Dio();
    var token = sp.read('token');
    Map<String, dynamic> hashmap = new HashMap();
    hashmap['report_category_id'] = report_category_id;
    hashmap['lat'] = lat.toString();
    hashmap['long'] = long.toString();
    hashmap['other'] = otherfield.toString();
    hashmap['message'] = message.toString();
    print(token);
    print(hashmap);
    var res = await dio
        .post(BaseUrl().baseurl + 'emergency-training/natural-disasters',
            data: hashmap,
            options: Options(headers: {
              Headers.acceptHeader: 'application/json',
              'authorization': token
            }))
        .catchError(onError);
    print(res.statusCode);
    if (res.statusCode == 200) {
      print(res.data);
      print('server response');
    } else {
      var error = res.data['error'].value.toString();
      error.replaceAll('([', "");
      error.replaceAll("])", "");
      Get.snackbar("Login", error.toString());
      return error;
    }
    print(onError);
  }

  AddEmergencyContact({var name, var number}) async {
    Dio dio = new Dio();
    var token = sp.read('token');
    Map<String, dynamic> hashmap = new HashMap();
    hashmap['name'] = name;
    hashmap['number'] = number;
    print(token);
    print(hashmap);
    print(name);
    print('hello wolrd');
    var sendForm = await dio
        .post(BaseUrl().baseurl + 'save-emergency-numbers',
            data: hashmap,
            options: Options(headers: {
              Headers.acceptHeader: 'application/json',
              'authorization': token
            }))
        .catchError(onError);
    print(sendForm.statusCode);
    if (sendForm.statusCode == 200) {
      print(sendForm.data);
      print(sendForm.data['message']);
      // Get.snackbar('Contact Form',sendForm.data['message'],
      //   snackPosition: SnackPosition.TOP,
      //   backgroundColor: Color(0xff00327A),
      //   colorText: Colors.white
      // );
      Get.to(MyHomePage());
      print('server data');
      return null;
    } else {
      var error = sendForm.data['error'].value.toString();
      print(error);
      error.replaceAll('([', "");
      error.replaceAll("])", "");
      Get.snackbar("Login", 'Your Credentiale are invalid');
      return error;
    }
    print(onError);
  }

  activeshooter(
      {var safe,
      var contactNo,
      var lat,
      var long,
      var message,
      var ActiveShooter}) async {
    Dio dio = new Dio();
    var token = sp.read('token');
    Map<String, dynamic> hashmap = new HashMap();
    hashmap['are_you_safe'] = safe.toString();
    hashmap['number_of_people'] = contactNo.toString();
    hashmap['lat'] = lat.toString();
    hashmap['long'] = long.toString();
    hashmap['message'] = message.toString();
    hashmap['Current_shooter_situation'] = ActiveShooter.toString();
    print(token);
    print(hashmap);
    var data = await dio
        .post(BaseUrl().baseurl + 'emergency-training/active-shooter',
            data: hashmap,
            options: Options(headers: {
              Headers.acceptHeader: 'application/json',
              'authorization': token
            }))
        .catchError(onError);
    print(data.statusCode);
    if (data.statusCode == 200) {
      print(data.data);
      Get.to(MyHomePage());
      print('view active shooter');
      return null;
    } else {
      var error = data.data['error'].value.toString();
      error.replaceAll('([', '');
      error.replaceAll('])', '');
      Get.snackbar('Report', error.toString());
    }
  }

  Future<UserProfile> profile() async {
    Dio dio = new Dio();
    var token = sp.read('token');
    var userprofile = await dio
        .get(BaseUrl().baseurl + 'get-profile',
            options: Options(headers: {
              Headers.acceptHeader: 'application/json',
              'authorization': token,
            }))
        .catchError(onError);
    print(userprofile.statusCode);
    if (userprofile.statusCode == 200) {
      print(userprofile.data);
      return userProfileFromJson(userprofile.data);
    } else {
      return userProfileFromJson(userprofile.data);
    }
  }

  vacationEmergencySystem(
      {var message,
      var medical,
      var lost,
      var lat,
      var long,
      var MedicalEmer,
      var other}) async {
    Dio dio = new Dio();
    var token = sp.read('token');
    Map<String, dynamic> hashmap = new HashMap();
    if (lost == true) {
      hashmap['vacation_option'] = 'lost'.toString();
    }
    if (medical == true) {
      hashmap['vacation_option'] = 'Medical'.toString();
    }
    hashmap['other'] = other.toString();
    hashmap['lat'] = lat;
    hashmap['long'] = long;
    hashmap['message'] = message;
    hashmap['MedicalEmer'] = MedicalEmer;
    print(token);
    print(hashmap);
    var vacationSystem = await dio
        .post(
            BaseUrl().baseurl + 'emergency-training/vacation-emergency-system',
            data: hashmap,
            options: Options(headers: {
              Headers.acceptHeader: 'application/json',
              'authorization': token
            }))
        .catchError(onError);
    print(vacationSystem.statusCode);
    if (vacationSystem.statusCode == 200) {
      print(vacationSystem.data);
      print(vacationSystem.data['message']);
      Get.offAll(MyHomePage());
      return null;
    } else {
      var error = vacationSystem.data['error'].value.toString();
      error.replaceAll('([', '');
      error.replaceAll('])', '');
      Get.snackbar('Report', 'check the field');
      return error;
    }
  }

  // ignore: non_constant_identifier_names
  EditProfile(
      {var ProfileName,
      var email,
      var mobile_no,
      var address,
      var ListName,
      var ListNumber}) async {
    Dio dio = new Dio();
    var token = sp.read('token');
    print(ListName);
    print(ListNumber);
    print('view both list in api folder');
    var number = [];
    var name = [];
    for (int i = 0; i < ListNumber.length; i++) {
      if (ListNumber[i].text.isNotEmpty) {
        number.add(ListNumber[i].text);
        name.add(ListName[i].text);
      }
    }
    Map<String, dynamic> hashmap = new HashMap();
    hashmap['name'] = ProfileName;
    hashmap['email'] = email;
    hashmap['mobile_no'] = mobile_no;
    hashmap['address'] = address;
    if (name.isNotEmpty) {
      hashmap['contact_name'] = name;
      hashmap['contact_number'] = number;
    }
    print(token);
    print(hashmap);
    var editProfile = await dio
        .post(BaseUrl().baseurl + 'profie-save-update',
            data: hashmap,
            options: Options(headers: {
              Headers.acceptHeader: 'application/json',
              'authorization': token,
            }))
        .catchError(onError);
    print(editProfile.statusCode);
    if (editProfile.statusCode == 200) {
      print(editProfile.data);
      Get.offAll(MyHomePage());
      return null;
    } else {
      var error = editProfile.data['error'].value.toString();
      error.replaceAll('([', '');
      error.replaceAll('])', '');
      Get.snackbar('Report', 'check the field');
      return error;
      // return null;
    }
  }

  Logout() async {
    Dio dio = new Dio();
    var token = sp.read('token');
    print(token);
    var logout = await dio
        .get(BaseUrl().baseurl + 'logout',
            options: Options(headers: {
              Headers.acceptHeader: 'application/json',
              'authorization': token
            }))
        .catchError(onError);
    print(logout);
    if (logout.statusCode == 200) {
      print(logout.data);
      print(logout.data['message']);
      sp.erase();
      Get.snackbar('', 'Logout successfully');
      Get.to(LoginScreen());
    }
  }

  onError(dynamic error) {
    print(error.response.data);
    print('error.runtimeType');
    // Get.snackbar('Error', error.response.data['data']);
    // if (error.response.statusCode == 401) {
    Get.snackbar('Error', "Error on Submission",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Color(0xff00327A),
        colorText: Colors.white);
  }

  onErrors(dynamic error) {
    print(error.response.data);
    print('error.runtimeType');
    Get.snackbar('Error', error.response.data['data'],
        snackPosition: SnackPosition.TOP,
        backgroundColor: Color(0xff00327A),
        colorText: Colors.white);
    // if (error.response.statusCode == 401) {
    //   Get.snackbar('Error', error.response.data['data']);
    // } else if (error.response.statusCode == 400) {
    //   Get.snackbar('Error', error.response.data['message']);
    //   print(error.response.data['message']);
    // } else if (error.response.statusCode != 200) {
    //   print(error.response.data['data']['error']);
    //   Get.snackbar('Error', error.response.data['data']['error']);
    //   if (!error.response.data['data'].values.toString().contains(",")) {
    //     var errors = error.response.data['data'].values.toString().substring(
    //         2, error.response.data['data'].values.toString().length - 2);
    //     return errors.toString();
    //   } else {
    //     var printerror = "";
    //     var errors = error.response.data['data'].values.toString().split(",");
    //     for (int i = 0; i < errors.length; i++) {
    //       printerror += (i + 1).toString() +
    //           ". " +
    //           errors[i].toString().substring(2, errors[i].toString().length - 2) +
    //           "\n";
    //     }
    //     return printerror.toString();
    //   }
    // }
  }
}
