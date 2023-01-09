import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinetripbookingapp/GlobalVariabls/loginvariablepage.dart';

class Log_In extends StatefulWidget {
  const Log_In({Key? key}) : super(key: key);

  @override
  State<Log_In> createState() => _Log_InState();
}

class _Log_InState extends State<Log_In> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController Contact_Controller = TextEditingController();

  // FlutterOtp otp = FlutterOtp();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.all(60)),
            const Center(
              child: Text(
                "Welcome To Celestial Trip !",
                style: TextStyle(
                  color: CupertinoColors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(5)),
            const Text(
              "Please Login/Sign Up using Your Email/Mobile to Continue",
              style: TextStyle(
                color: CupertinoColors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: h / 1.7,
                width: w / 1.1,
                decoration:
                    const BoxDecoration(color: CupertinoColors.white, boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 2)
                ]),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(5)),
                    const Icon(
                      Icons.account_circle_rounded,
                      color: Colors.black12,
                      size: 150,
                    ),
                    const Text(
                      "Mobile Number",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    Container(
                      height: h / 12,
                      width: w / 1.3,
                      decoration: BoxDecoration(
                          color: CupertinoColors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black26),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                spreadRadius: 1)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                          key: _formKey,
                          child: TextFormField(
                            controller: Contact_Controller,
                            onChanged: (val) {
                              setState(() {
                                loginvariable.ContactNo = val;
                              });
                            },
                            validator: (val) {
                              if (loginvariable.ContactNo.length != 10 ||
                                  loginvariable.ContactNo.isEmpty) {

                                return "please Enter Valid Contact no";
                              } else {
                                return null;
                              }
                            },
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              errorBorder: InputBorder.none,
                           disabledBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorStyle: TextStyle(
                                fontSize: 10,
                              ),

                              prefix: Text(
                                "+91 ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              focusedBorder: InputBorder.none,

                              hintText: "Contact No",
                              hintStyle: TextStyle(
                                color: Colors.black26,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(15)),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // otp.sendOtp(loginvariable.ContactNo, 'OTP is : pass the generated otp here ',
                          //     minNumber, maxNumber, countryCode);
                        });
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).pushNamed('otpvalidate');
                        } else {}
                      },
                      child: Container(
                        height: h / 18,
                        width: w / 1.4,
                        decoration: BoxDecoration(
                            color: CupertinoColors.systemRed,
                            border: Border.all(color: Colors.black26),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5,
                                  spreadRadius: 1)
                            ]),
                        child: const Center(
                            child: Text(
                          "CONTINUE",
                          style: TextStyle(
                              color: CupertinoColors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        )),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    const Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(children: [
                          TextSpan(
                              text: " By Proceeding,You Agree with our ",
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  "Terms of Service,Privacy Policy & User Agreement",
                              style: TextStyle(
                                  color: CupertinoColors.activeBlue,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold))
                        ])),
                    const Padding(padding: EdgeInsets.all(10)),
                    Container(
                      height: h / 16,
                      width: w / 1.4,
                      decoration: BoxDecoration(
                          color: CupertinoColors.white,
                          border: Border.all(color: CupertinoColors.systemRed),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                spreadRadius: 1)
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                              'http://pngimg.com/uploads/google/google_PNG19635.png',
                              fit: BoxFit.cover),
                          const Padding(padding: EdgeInsets.all(5)),
                          const Text(
                            "Sign in With Google",
                            style: TextStyle(
                              color: CupertinoColors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
