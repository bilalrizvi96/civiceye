import 'package:civiceye/View/DraftScreen/DraftScreen.dart';
import 'package:civiceye/View/HistroyPageScreen/HistoryPageScreen.dart';
import 'package:civiceye/View/ProfilePageScreen/ProfilePageScreen.dart';
import 'package:civiceye/View/ReportOfficer/ReportOfficer.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  final List<Widget> bodyContent = [
    ReportOfficerScreen(),
    HistoryPageScreen(),
    DraftScreen(),
    ProfilePageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
            () => Center(
              child: bodyContent.elementAt(navController.selectedIndex),
        ),
      ),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xff00327A),
              selectedIconTheme: IconThemeData(color: Color(0xffFECC05), size: 30),
              unselectedIconTheme: IconThemeData(color: Color(0xffFFFFFF), size: 30),
              unselectedItemColor: Color(0xffFFFFFF),
              selectedItemColor: Color(0xffFECC05),
              selectedFontSize: 15,
              // selectedItemColor: Colors.amberAccent,
              // selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffFECC05)),
              items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: "History",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.edit),
                label: "Draft",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
            ),
          ],
            currentIndex: navController.selectedIndex,
            onTap: (index) => navController.selectedIndex = index,
        ),
      ),
    );
  }
}

class NavController extends GetxController {
  var _selectedIndex = 0.obs;

  get selectedIndex => _selectedIndex.value;
  set selectedIndex(index) => _selectedIndex.value = index;
}
