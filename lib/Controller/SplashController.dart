import 'package:civiceye/View/BottomNavigation/BottomNavigation.dart';
import 'package:civiceye/View/LoginScreen/LoginScreen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController{
  var sp = GetStorage();

  @override
  void onInit() {
    // print(sp.read("key"));
    print('token');
    // TODO: implement onInit
    print(sp.read("token"));
    super.onInit();
    Future.delayed(Duration(seconds: 4), () {

      print('BaseUrl().storage.read(');
      Get.offAll(() =>
      sp.read("token") != null ? MyHomePage() : LoginScreen());
    });
  }
}