import 'package:civiceye/Controller/SignUpController.dart';
import 'package:civiceye/View/BottomNavigation/BottomNavigation.dart';
import 'package:civiceye/View/LoginScreen/LoginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  // const SignUpScreen({Key? key}) : super(key: key);
  SignUpController controller = Get.put(SignUpController());
  var emailVaild = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,}$");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(left: 35, right: 35, top: 25),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.fill
              )
            ),
            child: Form(
              key: controller.SignUpKeyForm,
              child: Column(
                children: [
                  Text("Sign Up",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: MediaQuery.of(context).size.width/14,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/60,
                  ),
                  Text("Add your details to sign up",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/27,
                        color: Color(0xffFFFFFF)
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/35,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: controller.nameController,
                    validator: (value) {
                      if(value!.isEmpty) {
                        return 'Please check your Name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Name",
                      contentPadding: EdgeInsets.only(left: 25, top: 22, bottom: 22),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              MediaQuery.of(context).size.height/12
                          ))
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/80,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.emailController,
                    validator: (value) {
                     if(emailVaild.hasMatch(controller.emailController.text) == false){
                       return'Please check your Email';
                     }
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Email',
                      contentPadding: EdgeInsets.only(left: 25, top: 22, bottom: 22),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              MediaQuery.of(context).size.height/12
                          ))
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/80,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: controller.mobile_noController,
                    validator: (value) {
                      if(value!.isEmpty && controller.mobile_noController.text.length <= 9){
                        return 'Please check your Mobile No';
                      }
                      return null;
                  },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Mobile No',
                      contentPadding: EdgeInsets.only(left: 25, top: 22, bottom: 22),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              MediaQuery.of(context).size.height/12
                          ))
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/80,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: controller.addressController,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Please check your Address';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Address',
                      contentPadding: EdgeInsets.only(left: 25, top: 22, bottom: 22),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              MediaQuery.of(context).size.height/12
                          ))
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/80,
                  ),
                  TextFormField(
                    controller: controller.passwordController,
                    validator: (value){
                      if(controller.passwordController.text.length < 6){
                        return 'Password Must be at least 8 characters';
                      // } else if(controller.passwordController.text != controller.confirm_passController.text) {
                      //   return 'password';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Password',
                      contentPadding: EdgeInsets.only(left: 25, top: 22, bottom: 22),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              MediaQuery.of(context).size.height/12
                          ))
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/80,
                  ),
                  TextFormField(
                    controller: controller.confirm_passController,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Please Conform Password';
                      } else if(controller.passwordController.text != controller.confirm_passController.text){
                        return 'Please Conform Password';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Confirm Password',
                      contentPadding: EdgeInsets.only(left: 25, top: 22, bottom: 22),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              MediaQuery.of(context).size.height/12
                          ))
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/45,
                  ),
                  InkWell(
                    onTap: (){
                      controller.Singups();
                      FocusScope.of(context).unfocus();
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
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Color(0xffc8E6c9),
                        //     spreadRadius: 0.2,
                        //     blurRadius: 0.5,
                        //     offset:
                        //     Offset(3, 2), // changes position of shadow
                        //   ),
                        // ],
                      ),
                      child: Text('Sign Up',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width/23.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an Account?",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width/28,
                            color: Color(0xff7C7D7E)
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/100,
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.back();
                        },
                        child: Text("Login",
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
          ),
        ),
      ),
    );
  }
}
