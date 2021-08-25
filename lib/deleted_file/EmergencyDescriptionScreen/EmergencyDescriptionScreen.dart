import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:flutter/material.dart';


class EmergencyDescriptionScreen extends StatelessWidget {
  // const EmergencyDescriptionScreen({Key? key}) : super(key: key);
bool valuesFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back,
                      size: MediaQuery.of(context).size.width/13,
                      color: yallowcolor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/3.8,
                    ),
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
              Text("Description",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width/23,
                  color: primarycolor
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/100,
              ),
              TextFormField(
                maxLines: 6,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Enter Text Here!",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                  // contentPadding: EdgeInsets.all(23),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(
                          MediaQuery.of(context).size.height/70
                      ))
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/28,
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: primarycolor,
                    activeColor: Color(0xff0064FE),
                    value: this.valuesFirst,
                    onChanged: (value) {
                      // setState(() {
                      //   this.valuesecond = value!;
                      // });
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/100,
                  ),
                  Text("Use Current Location",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width/25,
                      color: primarycolor
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/30,
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
                height: MediaQuery.of(context).size.height/30,
              ),
              Row(
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
                height: MediaQuery.of(context).size.height/25,
              ),
              Expanded(
                child: Row(
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
                            fontSize: MediaQuery.of(context).size.width/25.0,
                            color: primarycolor,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        // Get.to(NaturalDisastersScreen());
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
                        child: Text('Submit',
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width/25.0,
                              color: primarycolor,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/50,
              )

            ],
          ),
        ),
      ),
    );
  }
}
