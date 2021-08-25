import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:civiceye/Controller/LoginController.dart';
import 'package:civiceye/View/BottomNavigation/BottomNavigation.dart';
import 'package:civiceye/View/EmergencyContactList/EmergencyContactList.dart';
import 'package:civiceye/View/ReportOfficer/ReportOfficer.dart';
import 'package:civiceye/View/ResetPasswordScreen/ResetPasswordScreen.dart';
import 'package:civiceye/View/SignUpScreen/SignUpScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginScreen extends StatelessWidget {
  // const LoginScreen({Key? key}) : super(key: key);
  var emailValid = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,}$");

  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // ignore: unrelated_type_equality_checks
        // child: controller.isLoading == false?
        child:
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 35, right: 35, top: 55),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.fill,
            )
          ),
          child: Form(
            key: controller.LoginForm,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Text("Login",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: MediaQuery.of(context).size.width/14,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/45,
                  ),
                  Text("Add your details to login",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width/28,
                      color: Color(0xffFFFFFF)
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/19,
                  ),
                  TextFormField(
                    controller: controller.emailcontroller,
                    validator: (value) {
                      if(emailValid.hasMatch(
                        controller.emailcontroller.text
                        ) == false){
                        return 'Enter correct email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Email",
                      contentPadding: EdgeInsets.only(left: 25, top: 22, bottom: 22),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                            MediaQuery.of(context).size.height/12
                          ))
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/33,
                  ),
                  TextFormField(
                    controller: controller.passwordcontroler,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Please check Password';
                      } else if(controller.passwordcontroler.text != controller.passwordcontroler.text){
                        return 'Please check Password';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Password",
                      contentPadding: EdgeInsets.only(left: 25, top: 22, bottom: 22),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(
                            MediaQuery.of(context).size.height/12
                        ))
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/33,
                  ),
                  InkWell(
                      onTap: (){
                        controller.Login();
                        FocusScope.of(context).unfocus();
                        print(controller.Login());
                        // Get.to(MyHomePage());
                      },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/42),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xff6F8B3E),
                        borderRadius: BorderRadius.all(Radius.circular(
                            MediaQuery.of(context).size.width/5
                        )
                        ),
                      ),
                      child: Text('Login',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width/23.0,
                          fontWeight: FontWeight.w600,
                          color: primarycolor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/25,
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.to(ResetPasswordScreen());
                    },
                    child: Text("Forgot your password?",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/28,
                        color: Color(0xffFFFFFF)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an Account?",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width/28,
                          color: Color(0xffCCCCCC)
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/100,
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.toNamed('/reg');
                        },
                        child: Text("Sign Up",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width/28,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffF8CE00)
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        )
            // :Center(child: CircularProgressIndicator(),),
      ),
    );
  }
}
