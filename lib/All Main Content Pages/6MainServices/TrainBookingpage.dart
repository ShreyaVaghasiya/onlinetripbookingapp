import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinetripbookingapp/GlobalVariabls/UiScreensVariable.dart';

class Train_Booking extends StatefulWidget {
  const Train_Booking({Key? key}) : super(key: key);

  @override
  State<Train_Booking> createState() => _Train_BookingState();
}

class _Train_BookingState extends State<Train_Booking> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: h / 5,
            width: w,
            decoration: BoxDecoration(
              color: Colors.red.shade300,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(20)),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: CircleAvatar(
                          radius: 20,
                          backgroundColor: CupertinoColors.white,
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: CupertinoColors.systemRed,
                            size: 25,
                          ))),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    "Trains Search",
                    style: GoogleFonts.robotoSlab(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: CupertinoColors.white,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: h / 12,
              width: w / 1,
              decoration: BoxDecoration(
                  color: CupertinoColors.quaternaryLabel,
                  border: Border.all(
                      color: CupertinoColors.placeholderText, width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.my_location,
                    size: 20,
                    color: CupertinoColors.black,
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "From",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "Delhi",
                        style: TextStyle(
                            fontSize: 14,
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "New delhi Railway Station",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: h / 12,
              width: w / 1,
              decoration: BoxDecoration(
                  color: CupertinoColors.quaternaryLabel,
                  border: Border.all(
                      color: CupertinoColors.placeholderText, width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.location_on,
                    size: 20,
                    color: CupertinoColors.black,
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "To",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "Kolkata",
                        style: TextStyle(
                            fontSize: 14,
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "Kolkata Howrah Junction",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: h / 12,
              width: w / 1,
              decoration: BoxDecoration(
                  color: CupertinoColors.quaternaryLabel,
                  border: Border.all(
                      color: CupertinoColors.placeholderText, width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.calendar_month_sharp,
                    size: 20,
                    color: CupertinoColors.black,
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "DATE",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "10 Jan",
                        style: TextStyle(
                            fontSize: 14,
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "Today,Tuesday",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(15)),
                  Row(
                    children: [
                      SizedBox(
                          height: h / 25,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                "Tomorrow",
                                style: TextStyle(fontSize: 12),
                              ))),
                      Padding(padding: EdgeInsets.all(5)),
                      SizedBox(
                          height: h / 25,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                "Day After",
                                style: TextStyle(fontSize: 12),
                              ))),
                      Padding(padding: EdgeInsets.all(5)),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...UiGlobalVariable.TrainSeats.map((e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: h / 25,
                        width: w / 6,
                        decoration: BoxDecoration(
                            color: CupertinoColors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5,
                                  spreadRadius: 2)
                            ]),
                        child: Center(
                            child: Text(
                          e,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )),
                      ),
                    )),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: h / 20,
              width: w / 1,
              decoration: BoxDecoration(
                color: CupertinoColors.activeBlue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: GestureDetector(
                  child: Center(
                      child: Text(
                "Search",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
                ),
              ))),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: h / 15,
              width: w / 1,
              decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  border: Border.all(
                      color: CupertinoColors.placeholderText, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.verified_user,
                    size: 15,
                    color: CupertinoColors.black,
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text(
                    "TRAVEL SAFE | Your safety : Our Priority",
                    style: TextStyle(
                        fontSize: 14,
                        color: CupertinoColors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                    color: CupertinoColors.black,
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
