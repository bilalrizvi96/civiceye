import 'package:civiceye/Component/Color/DynamicColor.dart';
import 'package:civiceye/View/AddNewContactScreen/AddNewContactScreen.dart';
import 'package:civiceye/View/ReportDescriptionScreen/ReportDescriptionScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DraftScreen extends StatelessWidget {
  const DraftScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop:()async=>false ,
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.fill
              )
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: GestureDetector(
                onTap: (){
                  Get.to(ReportDescriptionScreen());
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Icon(Icons.arrow_back,
                          //   size: MediaQuery.of(context).size.width/13,
                          //   color: yallowcolor,
                          // ),
                          // SizedBox(
                          //   width: MediaQuery.of(context).size.width/3.8,
                          // ),
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
                    Container(
                      height: MediaQuery.of(context).size.height/1.11,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height/30,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Color(0xffE7F0FF),
                                radius: MediaQuery.of(context).size.width/13,
                                child: Icon(Icons.person,
                                  size: MediaQuery.of(context).size.width/11,
                                  color: primarycolor,
                                ),
                              ),
                              title: Text("Camera",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/23,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Description",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width/28,
                                        color: Color(0xffF8CE00)
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height/130,
                                  ),
                                  Text("Pick current",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width/30,
                                        color: Color(0xffB2B1AB)
                                    ),
                                  )
                                ],
                              ),
                              trailing: Text("13 April",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/30,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height/30,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Color(0xffE7F0FF),
                                radius: MediaQuery.of(context).size.width/13,
                                child: Icon(Icons.person,
                                  size: MediaQuery.of(context).size.width/11,
                                  color: primarycolor,
                                ),
                              ),
                              title: Text("Camera",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/23,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Description",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width/28,
                                        color: Color(0xffF8CE00)
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height/130,
                                  ),
                                  Text("Pick current",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width/30,
                                        color: Color(0xffB2B1AB)
                                    ),
                                  )
                                ],
                              ),
                              trailing: Text("13 April",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/30,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height/30,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Color(0xffE7F0FF),
                                radius: MediaQuery.of(context).size.width/13,
                                child: Icon(Icons.person,
                                  size: MediaQuery.of(context).size.width/11,
                                  color: primarycolor,
                                ),
                              ),
                              title: Text("Camera",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/23,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Description",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width/28,
                                        color: Color(0xffF8CE00)
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height/130,
                                  ),
                                  Text("Pick current",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width/30,
                                        color: Color(0xffB2B1AB)
                                    ),
                                  )
                                ],
                              ),
                              trailing: Text("13 April",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/30,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height/30,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Color(0xffE7F0FF),
                                radius: MediaQuery.of(context).size.width/13,
                                child: Icon(Icons.person,
                                  size: MediaQuery.of(context).size.width/11,
                                  color: primarycolor,
                                ),
                              ),
                              title: Text("Camera",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/23,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Description",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width/28,
                                        color: Color(0xffF8CE00)
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height/130,
                                  ),
                                  Text("Pick current",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width/30,
                                        color: Color(0xffB2B1AB)
                                    ),
                                  )
                                ],
                              ),
                              trailing: Text("13 April",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/30,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height/30,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Color(0xffE7F0FF),
                                radius: MediaQuery.of(context).size.width/13,
                                child: Icon(Icons.person,
                                  size: MediaQuery.of(context).size.width/11,
                                  color: primarycolor,
                                ),
                              ),
                              title: Text("Camera",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/23,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Description",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width/28,
                                        color: Color(0xffF8CE00)
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height/130,
                                  ),
                                  Text("Pick current",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width/30,
                                        color: Color(0xffB2B1AB)
                                    ),
                                  )
                                ],
                              ),
                              trailing: Text("13 April",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/30,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height/30,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Color(0xffE7F0FF),
                                radius: MediaQuery.of(context).size.width/13,
                                child: Icon(Icons.person,
                                  size: MediaQuery.of(context).size.width/11,
                                  color: primarycolor,
                                ),
                              ),
                              title: Text("Camera",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/23,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Description",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width/28,
                                        color: Color(0xffF8CE00)
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height/130,
                                  ),
                                  Text("Pick current",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width/30,
                                        color: Color(0xffB2B1AB)
                                    ),
                                  )
                                ],
                              ),
                              trailing: Text("13 April",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/30,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height/30,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Color(0xffE7F0FF),
                                radius: MediaQuery.of(context).size.width/13,
                                child: Icon(Icons.person,
                                  size: MediaQuery.of(context).size.width/11,
                                  color: primarycolor,
                                ),
                              ),
                              title: Text("Camera",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/23,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Description",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width/28,
                                        color: Color(0xffF8CE00)
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height/130,
                                  ),
                                  Text("Pick current",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width/30,
                                        color: Color(0xffB2B1AB)
                                    ),
                                  )
                                ],
                              ),
                              trailing: Text("13 April",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/30,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height/30,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Color(0xffE7F0FF),
                                radius: MediaQuery.of(context).size.width/13,
                                child: Icon(Icons.person,
                                  size: MediaQuery.of(context).size.width/11,
                                  color: primarycolor,
                                ),
                              ),
                              title: Text("Camera",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/23,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Description",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width/28,
                                        color: Color(0xffF8CE00)
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height/130,
                                  ),
                                  Text("Pick current",
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width/30,
                                        color: Color(0xffB2B1AB)
                                    ),
                                  )
                                ],
                              ),
                              trailing: Text("13 April",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/30,
                                    color: primarycolor,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )

                    // ListView.builder(
                    //     itemCount: list.length,
                    //     itemBuilder: (BuildContext context, int index) {
                    //     return ListTile(
                    //       // leading:  CircleAvatar(
                    //       //   radius: MediaQuery.of(context).size.width/11,
                    //       //   backgroundColor: Color(0xffAEADC2),
                    //       //   child: Container(
                    //       //     height: MediaQuery.of(context).size.height/4,
                    //       //     width: MediaQuery.of(context).size.width,
                    //       //     decoration: BoxDecoration(
                    //       //         image: DecorationImage(
                    //       //           image: AssetImage(list[index].image),
                    //       //         )
                    //       //     ),
                    //       //   ),
                    //       // ),
                    //       title: Text(list[index].title),
                    //     );
                    //   }
                    // )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class DraftList {
//   var date, title, subtitle, image;
//   DraftList({this.image, this.title, this.subtitle, this.date});
// }
//
// List<DraftList> list = [
//   DraftList( title: "Camera", subtitle: "Description", date: "13 April"),
//   DraftList( title: "Camera", subtitle: "Description", date: "13 April"),
//   DraftList( title: "Camera", subtitle: "Description", date: "13 April"),
//   DraftList( title: "Camera", subtitle: "Description", date: "13 April"),
//   DraftList( title: "Camera", subtitle: "Description", date: "13 April"),
// ];