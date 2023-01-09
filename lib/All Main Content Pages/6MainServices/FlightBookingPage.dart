import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Flight_Booking extends StatefulWidget {
  const Flight_Booking({Key? key}) : super(key: key);

  @override
  State<Flight_Booking> createState() => _Flight_BookingState();
}

class _Flight_BookingState extends State<Flight_Booking> {
  bool flight1 = true;
  bool flight2 = false;
  dynamic active = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 15,
    color: CupertinoColors.activeBlue,
  );
  dynamic Inactive = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 15,
    color: Colors.black26,
  );

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
                    "Available Flights",
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
          Padding(padding: EdgeInsets.all(10)),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: h / 1.9,
              width: w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26, blurRadius: 10, spreadRadius: 2)
                  ]),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              flight1 = true;
                              flight2 = false;
                            });
                          },
                          child: Text(
                            "One - Way",
                            style: (flight1 == true) ? active : Inactive,
                          )),
                      Padding(padding: EdgeInsets.all(10)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              flight2 = true;
                              flight1 = false;
                            });
                          },
                          child: Text(
                            "Round - Trip",
                            style: (flight2 == true) ? active : Inactive,
                          )),
                    ],
                  ),
                  (flight1 == true)
                      ? Column(
                          children: [
                            Padding(padding: EdgeInsets.all(10)),
                            Container(
                              height: h / 15,
                              width: w / 1.1,
                              color: Colors.black12,
                              child: Row(
                                children: [
                                  Padding(padding: EdgeInsets.all(10)),
                                  Icon(
                                    CupertinoIcons.airplane,
                                    size: 20,
                                    color: Colors.black54,
                                  ),
                                  Padding(padding: EdgeInsets.all(10)),
                                  Text(
                                    "Flying From",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Container(
                              height: h / 15,
                              width: w / 1.1,
                              color: Colors.black12,
                              child: Row(
                                children: [
                                  Padding(padding: EdgeInsets.all(10)),
                                  Icon(
                                    CupertinoIcons.location_solid,
                                    size: 20,
                                    color: Colors.black54,
                                  ),
                                  Padding(padding: EdgeInsets.all(10)),
                                  Text(
                                    "Flying to",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Container(
                              height: h / 7.8,
                              width: w / 1.1,
                              color: Colors.black12,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "    Departure",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(padding: EdgeInsets.all(10)),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Text(
                                          "6",
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: CupertinoColors.activeBlue,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "Sat",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black54,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Jan",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  showDialog(
                                      context: context,
                                      builder: (context) =>
                                          chooseflightclass());
                                });
                              },
                              child: Container(
                                height: h / 15,
                                width: w / 1.1,
                                color: Colors.black12,
                                child: Center(
                                  child: Text(
                                    "1 Passenger,Economy",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: CupertinoColors.activeBlue,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Container(
                              height: h / 20,
                              width: w / 1.1,
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
                          ],
                        )
                      : Column(
                          children: [
                            Padding(padding: EdgeInsets.all(10)),
                            Container(
                              height: h / 15,
                              width: w / 1.1,
                              color: Colors.black12,
                              child: Row(
                                children: [
                                  Padding(padding: EdgeInsets.all(10)),
                                  Icon(
                                    CupertinoIcons.airplane,
                                    size: 20,
                                    color: Colors.black54,
                                  ),
                                  Padding(padding: EdgeInsets.all(10)),
                                  Text(
                                    "Flying From",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Container(
                              height: h / 15,
                              width: w / 1.1,
                              color: Colors.black12,
                              child: Row(
                                children: [
                                  Padding(padding: EdgeInsets.all(10)),
                                  Icon(
                                    CupertinoIcons.location_solid,
                                    size: 20,
                                    color: Colors.black54,
                                  ),
                                  Padding(padding: EdgeInsets.all(10)),
                                  Text(
                                    "Flying to",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Container(
                              height: h / 7.8,
                              width: w / 1.1,
                              color: Colors.black12,
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "    Departure",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(padding: EdgeInsets.all(10)),
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Text(
                                              "6",
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    CupertinoColors.activeBlue,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Sat",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black54,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "Jan",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black54,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.all(20)),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 25,
                                    color: Colors.black54,
                                  ),
                                  Padding(padding: EdgeInsets.all(20)),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "    Return",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(padding: EdgeInsets.all(10)),
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Text(
                                              "6",
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    CupertinoColors.activeBlue,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Sat",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black54,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "Jan",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black54,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  showDialog(
                                      context: context,
                                      builder: (context) =>
                                          choosflightclass1());
                                });
                              },
                              child: Container(
                                height: h / 15,
                                width: w / 1.1,
                                color: Colors.black12,
                                child: Center(
                                  child: Text(
                                    "1 Passenger,Economy",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: CupertinoColors.activeBlue,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Container(
                              height: h / 20,
                              width: w / 1.1,
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
                          ],
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class chooseflightclass extends StatefulWidget {
  const chooseflightclass({Key? key}) : super(key: key);

  @override
  State<chooseflightclass> createState() => _chooseflightclassState();
}

class _chooseflightclassState extends State<chooseflightclass> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        title: Text(
          "1 Passengers , First",
          style: TextStyle(
            color: CupertinoColors.activeBlue,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        elevation: 10,
        content: Builder(
          builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return Container(
              height: h / 1.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          height: h / 17,
                          width: w / 3.2,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: CupertinoColors.activeBlue, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "Economy",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: CupertinoColors.activeBlue),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          height: h / 17,
                          width: w / 3.2,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: CupertinoColors.activeBlue, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "ProEconomy",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: CupertinoColors.activeBlue),
                          )),
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          height: h / 17,
                          width: w / 3.2,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: CupertinoColors.activeBlue, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "Bussiness",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: CupertinoColors.activeBlue),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          height: h / 17,
                          width: w / 3.2,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: CupertinoColors.activeBlue, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "First",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: CupertinoColors.activeBlue),
                          )),
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "2",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "Adults (>11 yrs)",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h / 18,
                          width: w / 18,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: CupertinoColors.activeBlue, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            size: 15,
                            color: CupertinoColors.activeBlue,
                          )),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h / 18,
                          width: w / 18,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Icon(
                            Icons.remove,
                            size: 15,
                            color: Colors.black26,
                          )),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                      ]),
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "0",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "Children(2-11yrs)",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h / 18,
                          width: w / 18,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: CupertinoColors.activeBlue, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            size: 15,
                            color: CupertinoColors.activeBlue,
                          )),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h / 18,
                          width: w / 18,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Icon(
                            Icons.remove,
                            size: 15,
                            color: Colors.black26,
                          )),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                      ]),
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "0",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "Infants (<2 yrs) ",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(2)),
                        Container(
                          height: h / 18,
                          width: w / 18,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: CupertinoColors.activeBlue, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            size: 15,
                            color: CupertinoColors.activeBlue,
                          )),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h / 18,
                          width: w / 18,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Icon(
                            Icons.remove,
                            size: 15,
                            color: Colors.black26,
                          )),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                      ]),
                  Padding(padding: EdgeInsets.all(20)),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: h / 20,
                      width: w / 1.4,
                      decoration: BoxDecoration(
                        color: CupertinoColors.activeBlue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: GestureDetector(
                          child: Center(
                              child: Text(
                        "Ok",
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
          },
        ));
  }
}

class choosflightclass1 extends StatefulWidget {
  const choosflightclass1({Key? key}) : super(key: key);

  @override
  State<choosflightclass1> createState() => _choosflightclass1State();
}

class _choosflightclass1State extends State<choosflightclass1> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        title: Text(
          "1 Passengers , First",
          style: TextStyle(
            color: CupertinoColors.activeBlue,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        elevation: 10,
        content: Builder(
          builder: (context) {
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return Container(
              height: h / 1.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          height: h / 17,
                          width: w / 3.2,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: CupertinoColors.activeBlue, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "Economy",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: CupertinoColors.activeBlue),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          height: h / 17,
                          width: w / 3.2,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: CupertinoColors.activeBlue, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "ProEconomy",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: CupertinoColors.activeBlue),
                          )),
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          height: h / 17,
                          width: w / 3.2,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: CupertinoColors.activeBlue, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "Bussiness",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: CupertinoColors.activeBlue),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          height: h / 17,
                          width: w / 3.2,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: CupertinoColors.activeBlue, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "First",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: CupertinoColors.activeBlue),
                          )),
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "2",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "Adults (>11 yrs)",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h / 18,
                          width: w / 18,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: CupertinoColors.activeBlue, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            size: 15,
                            color: CupertinoColors.activeBlue,
                          )),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h / 18,
                          width: w / 18,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Icon(
                            Icons.remove,
                            size: 15,
                            color: Colors.black26,
                          )),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                      ]),
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "0",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "Children(2-11yrs)",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h / 18,
                          width: w / 18,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: CupertinoColors.activeBlue, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            size: 15,
                            color: CupertinoColors.activeBlue,
                          )),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h / 18,
                          width: w / 18,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Icon(
                            Icons.remove,
                            size: 15,
                            color: Colors.black26,
                          )),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                      ]),
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "0",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "Infants (<2 yrs) ",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(2)),
                        Container(
                          height: h / 18,
                          width: w / 18,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: CupertinoColors.activeBlue, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            size: 15,
                            color: CupertinoColors.activeBlue,
                          )),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h / 18,
                          width: w / 18,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Icon(
                            Icons.remove,
                            size: 15,
                            color: Colors.black26,
                          )),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                      ]),
                  Padding(padding: EdgeInsets.all(20)),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: h / 20,
                      width: w / 1.4,
                      decoration: BoxDecoration(
                        color: CupertinoColors.activeBlue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: GestureDetector(
                          child: Center(
                              child: Text(
                        "Ok",
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
          },
        ));
  }
}
