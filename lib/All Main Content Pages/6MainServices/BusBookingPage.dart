import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bus_Booking extends StatefulWidget {
  const Bus_Booking({Key? key}) : super(key: key);

  @override
  State<Bus_Booking> createState() => _Bus_BookingState();
}

class _Bus_BookingState extends State<Bus_Booking> {
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
                    "Bus Search",
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
              height: h / 18,
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
                  Text(
                    "Enter City or Bus Stop",
                    style: TextStyle(
                        fontSize: 14,
                        color: CupertinoColors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: h / 18,
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
                  Text(
                    "Enter City or Bus Stop",
                    style: TextStyle(
                        fontSize: 14,
                        color: CupertinoColors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: h / 14,
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
                      Padding(padding: EdgeInsets.all(6)),
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
                    ],
                  ),
                ],
              ),
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
                "Search Buses",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
                ),
              ))),
            ),
          ),
        ],
      ),
    );
  }
}
