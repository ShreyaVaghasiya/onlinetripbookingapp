import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinetripbookingapp/GlobalVariabls/loginvariablepage.dart';

class Submit_Data extends StatefulWidget {
  const Submit_Data({Key? key}) : super(key: key);

  @override
  State<Submit_Data> createState() => _Submit_DataState();
}

class _Submit_DataState extends State<Submit_Data> {
  final _formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).pop();
              });
            },
            child: const Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.black,
            ),
          ),
          backgroundColor: CupertinoColors.white,
          title: const Text(
            "Sign up",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: h,
            width: w,
            decoration: BoxDecoration(
              color: CupertinoColors.white,
              boxShadow: const [
                BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 2)
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Form(
              key: _formKey1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.all(10)),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "First Name",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h / 15,
                      child: TextFormField(
                        onChanged: (val) {
                          setState(() {
                            loginvariable.FirstName = val;
                          });
                        },
                        validator: (val) {
                          if (loginvariable.FirstName.isEmpty) {
                            return "Enter Your First Name";
                          } else {
                            return null;
                          }
                        },
                        style: const TextStyle(
                            fontSize: 12,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintText: "First Name",
                          hintStyle: TextStyle(
                              fontSize: 12,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Last Name",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h / 15,
                      child: TextFormField(
                        onChanged: (val) {
                          setState(() {
                            loginvariable.LastName = val;
                          });
                        },
                        validator: (val) {
                          if (loginvariable.LastName.isEmpty) {
                            return "Enter Your Last Name";
                          } else {
                            return null;
                          }
                        },
                        style: const TextStyle(
                            fontSize: 12,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintText: "Last Name",
                          hintStyle: TextStyle(
                              fontSize: 12,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Contact No",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: h / 15,
                        width: w / 1.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black26, width: 1),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              loginvariable.ContactNo,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        )),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h / 15,
                      child: TextFormField(
                        onChanged: (val) {
                          setState(() {
                            loginvariable.Password = val;
                          });
                        },
                        validator: (val) {
                          if (loginvariable.Password.isEmpty ||
                              loginvariable.Password.length < 6) {
                            return "must be 6 Charachters";
                          } else {
                            return null;
                          }
                        },
                        style: const TextStyle(
                            fontSize: 12,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintText: "At Least 6 Charachters",
                          hintStyle: TextStyle(
                              fontSize: 12,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Confirm Password *",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h / 15,
                      child: TextFormField(
                        onChanged: (val) {
                          setState(() {
                            loginvariable.ConfirmPassword = val;
                          });
                        },
                        validator: (val) {
                          if (loginvariable.ConfirmPassword.isEmpty ||
                              loginvariable.Password !=
                                  loginvariable.ConfirmPassword) {
                            return "Enter Valid Password";
                          } else {
                            return null;
                          }
                        },
                        style: const TextStyle(
                            fontSize: 12,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(
                              fontSize: 12,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26),
                          border: OutlineInputBorder(),
                        ),
                      ),
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
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        if (_formKey1.currentState!.validate()) {
                          Navigator.of(context).pushReplacementNamed('home');
                        } else {}
                      },
                      child: Container(
                        height: h / 18,
                        width: w / 1.2,
                        decoration: BoxDecoration(
                            color: CupertinoColors.systemRed,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black26),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5,
                                  spreadRadius: 1)
                            ]),
                        child: const Center(
                            child: Text(
                          "Sign up",
                          style: TextStyle(
                              color: CupertinoColors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: CupertinoColors.white,
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
