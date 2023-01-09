import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinetripbookingapp/GlobalVariabls/loginvariablepage.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
class Otp_Validate extends StatefulWidget {
  const Otp_Validate({Key? key}) : super(key: key);

  @override
  State<Otp_Validate> createState() => _Otp_ValidateState();
}

class _Otp_ValidateState extends State<Otp_Validate> {
  bool isSubmit = false;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.all(20)),
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
              "Please Verify Your Mobile Number to Proceed",
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
                height: h / 1.6,
                width: w / 1.1,
                decoration: const BoxDecoration(
                    color: CupertinoColors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 10, spreadRadius: 2)
                    ]),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(10)),
                    const Text(
                      "Verify Your Mobile Number",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    const Icon(
                      Icons.verified_user,
                      color: Colors.black12,
                      size: 100,
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    const Text(
                      "An OTP (valid for next 15 minutes) has been sent to you on\nYour Mobile Number",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "+91 ${loginvariable.ContactNo}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(5)),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              Navigator.of(context).pop();
                            });
                          },
                          child: const Icon(
                            Icons.edit,
                            size: 20,
                            color: Colors.black26,
                          ),
                        )
                      ],
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    const Text(
                      "Enter 6 - Digit OTP",
                      style: TextStyle(
                        color: Colors.black26,
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    OtpTextField(
                      numberOfFields: 6,
                      borderColor: Colors.black87,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: CupertinoColors.black,
                      ),

                      showFieldAsBox: true,
                      onCodeChanged: (String code) {
                      },
                      onSubmit: (String verificationCode){
                        showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                elevation: 20,
                                title: const Text("Your Code is Verified",style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: CupertinoColors.black
                                ),),
                                content: Text('Entered Code is $verificationCode',style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color:Colors.black26,
                                ),),
                              );
                            }

                        );
                      isSubmit = true;
                      }, // end onSubmit
                    ),
                    const Padding(padding: EdgeInsets.all(20)),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if(isSubmit == true){
                            Navigator.of(context).pushReplacementNamed('submitdata');
                          }
                          else{
                            return;
                          }
                        });
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
                          "Verify and Continue",
                          style: TextStyle(
                              color: CupertinoColors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        )),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    const Text(
                      "Resend OTP ( 7 Seconds )",
                      style: TextStyle(
                          color: Colors.black26,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Padding(padding: EdgeInsets.all(10)),

                  ],
                ),
              ),
            )
          ],
        ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
