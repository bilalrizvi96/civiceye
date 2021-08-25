import 'package:civiceye/API/API.dart';
import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:civiceye/Controller/ProfileFormController.dart';
import 'package:civiceye/Models/ProfileModel.dart';
import 'package:civiceye/View/LoginScreen/LoginScreen.dart';
import 'package:civiceye/View/ProfileFormScreen/ProfileFormScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';




class ProfilePageScreen extends StatelessWidget {
  ProfilePageScreen({Key? key}) : super(key: key);
  ProfileFormController userProf = Get.put(ProfileFormController());
  var sp = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop:()async=>false ,
        child: SafeArea(
          child: FutureBuilder<UserProfile>(
            future: API().profile(),
            builder: (BuildContext context, snapShot) {
              // ignore: unrelated_type_equality_checks
              switch(snapShot.connectionState){
                case ConnectionState.waiting:
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/background.png'),
                        fit: BoxFit.fill
                      )
                    ),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                default:
                if(snapShot.hasError){
                  print(snapShot.error);
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 23, right: 23),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/background.png"),
                            fit: BoxFit.fill
                        )
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("CIVIC",
                                style: TextStyle(
                                    color: primarycolor,
                                    fontSize: MediaQuery.of(context).size.width/18,
                                    letterSpacing: 1.2,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/100,
                              ),
                              Text("EYE",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/18,
                                    color: yallowcolor,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.2
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/25,
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.toNamed('/profileForm');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.edit,
                                color: primarycolor,
                                size: MediaQuery.of(context).size.width/25,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/120,
                              ),
                              Text("Edit Profile",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/32,
                                    color: primarycolor
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/30,
                        ),
                        Text("Hi there! ",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width/25,
                              color: primarycolor
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/40,
                        ),
                        GestureDetector(
                          onTap: (){
                            // sp.erase();
                            Get.offAll(LoginScreen());
                            API().Logout();
                          },
                          child: Text("Sign Out",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width/28,
                                color: primarycolor
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Name",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width/25,
                                  color: primarycolor,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            Opacity(
                              opacity: 0.6,
                              child: Text("Name",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/30,
                                    color: primarycolor
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/33,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Email",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width/25,
                                  color: primarycolor,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            Opacity(
                              opacity: 0.6,
                              child: Text("Email",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/30,
                                    color: primarycolor
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/33,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Mobile No",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width/25,
                                  color: primarycolor,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            Opacity(
                              opacity: 0.6,
                              child: Text("1XXXXXXXXXXXXX",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/30,
                                    color: primarycolor
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/33,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Address",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width/25,
                                  color: primarycolor,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            Opacity(
                              opacity: 0.6,
                              child: Text("XYZ Street",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/30,
                                    color: primarycolor
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/90,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/3,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                              itemCount: 3,
                              itemBuilder: (context, index){
                                print('view phone number from index');
                                // print(snapShot.data!.data.emergencyNumbers[0]);
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Emergency #",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width/25,
                                          height: 2.8,
                                          color: primarycolor,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.6,
                                      child: Text("1XXXXXXXXXX",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width/30,
                                            color: primarycolor
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ],
                    ),
                  );
                }
                else {
                  userProf.nameController.text=snapShot.data!.data.name;
                  userProf.emailController.text = snapShot.data!.data.email;
                  userProf.phonenumberController.text = snapShot.data!.data.mobileNo;
                  userProf.addressController.text = snapShot.data!.data.address;
                  if( userProf.emergencyList.value!=null) {
                    userProf.emergencyList.value =
                        snapShot.data!.data.emergencyNumbers;
                  }
                  print(userProf.nameController.text);
                  print(userProf.emailController.text);
                  print(userProf.phonenumberController.text);
                  // ignore: invalid_use_of_protected_member
                  print(userProf.emergencyList.value);
                  // print(userProf.emergencyList.value[0].number);
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 23, right: 23),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/background.png"),
                            fit: BoxFit.fill
                        )
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("CIVIC",
                                style: TextStyle(
                                    color: primarycolor,
                                    fontSize: MediaQuery.of(context).size.width/18,
                                    letterSpacing: 1.2,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/100,
                              ),
                              Text("EYE",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/18,
                                    color: yallowcolor,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.2
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/25,
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.toNamed('/profileForm');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.edit,
                                color: primarycolor,
                                size: MediaQuery.of(context).size.width/25,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/120,
                              ),
                              Text("Edit Profile",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/32,
                                    color: primarycolor
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/30,
                        ),
                        Text("Hi there! ${snapShot.data!.data.name}",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width/25,
                              color: primarycolor
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/40,
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.offAll(LoginScreen());
                            API().Logout();
                          },
                          child: Text("Sign Out",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width/28,
                                color: primarycolor
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Name",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width/25,
                                  color: primarycolor,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            Opacity(
                              opacity: 0.6,
                              child: Text("${snapShot.data!.data.name}",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/30,
                                    color: primarycolor
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/33,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Email",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width/25,
                                  color: primarycolor,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            Opacity(
                              opacity: 0.6,
                              child: Text("${snapShot.data!.data.email}",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/30,
                                    color: primarycolor
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/33,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Mobile No",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width/25,
                                  color: primarycolor,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            Opacity(
                              opacity: 0.6,
                              child: Text("${snapShot.data!.data.mobileNo}",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/30,
                                    color: primarycolor
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/33,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Address",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width/25,
                                  color: primarycolor,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            Opacity(
                              opacity: 0.6,
                              child: Text("${snapShot.data!.data.address}",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/30,
                                    color: primarycolor
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height/90,
                        ),
                        // if(snapShot.data!.data.emergencyNumbers.isNotEmpty){
                        //
                        // }
                        Container(
                          height: MediaQuery.of(context).size.height/3,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                              itemCount:  snapShot.data!.data.emergencyNumbers==null?0: snapShot.data!.data.emergencyNumbers.length,
                              itemBuilder: (context, index){

                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("${snapShot.data!.data.emergencyNumbers[index].name}",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width/25,
                                          height: 2.8,
                                          color: primarycolor,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.6,
                                      child: Text("${snapShot.data!.data.emergencyNumbers[index].number}",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width/30,
                                            color: primarycolor
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ],
                    ),
                  );
                }
              }
          })
        ),
      ),
    );
  }
}
