import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cab_Booking extends StatefulWidget {
  const Cab_Booking({Key? key}) : super(key: key);

  @override
  State<Cab_Booking> createState() => _Cab_BookingState();
}

class _Cab_BookingState extends State<Cab_Booking> {
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
                    "Cab Search",
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
              height: h / 14,
              width: w / 1,
              decoration: BoxDecoration(
                color: CupertinoColors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 2)
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.car_detailed,
                        size: 15,
                        color: CupertinoColors.separator,
                      ),
                      Text("OutStation"),
                      Text("Cabs")
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
