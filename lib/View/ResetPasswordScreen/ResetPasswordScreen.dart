import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  // const ResetPasswordScreen({Key? key}) : super(key: key);
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 35, right: 35, top: 55),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.fill
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Reset Password",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width/14,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.2
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/30,
              ),
              Text("Please enter your email to receive a\n link to create a new password via email",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width/26,
                  // letterSpacing: 1.2,
                  height: 1.4,
                  color: Color(0xffFFFFFF)
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/25,
              ),
              TextField(
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
              // CheckboxListTile(
              //   controlAffinity: ListTileControlAffinity.trailing,
              //   secondary: const Icon(Icons.alarm),
              //   title: const Text('Ringing at 5:00 AM every day'),
              //   subtitle: Text('Ringing after 12 hours'),
              //   value: this.valuesecond,
              //   onChanged: (bool value) {
              //     setState(() {
              //       this.valuesecond = value;
              //     });
              //   },
              // ),
              SizedBox(
                height: MediaQuery.of(context).size.height/30,
              ),
              Container(
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
                child: Text('Send',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width/23.0,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

