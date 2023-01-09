import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Booking_Hotel extends StatefulWidget {
  const Booking_Hotel({Key? key}) : super(key: key);

  @override
  State<Booking_Hotel> createState() => _Booking_HotelState();
}

class _Booking_HotelState extends State<Booking_Hotel> {
  bool room1 = true;
  bool room2 = false;
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
                    "Available Rooms",
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
              height: h / 2.3,
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
                  Padding(padding: EdgeInsets.all(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              room1 = true;
                              room2 = false;
                            });
                          },
                          child: Text(
                            "Overnight",
                            style: (room1 == true) ? active : Inactive,
                          )),
                      Padding(padding: EdgeInsets.all(10)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              room2 = true;
                              room1 = false;
                            });
                          },
                          child: Text(
                            "Day Use",
                            style: (room2 == true) ? active : Inactive,
                          )),
                    ],
                  ),
                  (room1 == true)
                      ? Column(
                          children: [
                            Padding(padding: EdgeInsets.all(5)),
                            Divider(
                              thickness: 1,
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.all(5)),
                                Icon(
                                  Icons.search,
                                  size: 20,
                                  color: CupertinoColors.black,
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                Text(
                                  "Near me",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: CupertinoColors.black,
                                  ),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Divider(
                              thickness: 1,
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.all(5)),
                                Icon(
                                  Icons.calendar_month,
                                  size: 20,
                                  color: CupertinoColors.black,
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                Text(
                                  "Fri,Jan 06",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: CupertinoColors.black,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(15)),
                                Icon(Icons.arrow_forward),
                                Padding(padding: EdgeInsets.all(10)),
                                Padding(padding: EdgeInsets.only(right: 20)),
                                Icon(
                                  Icons.calendar_month,
                                  size: 20,
                                  color: CupertinoColors.black,
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                Text(
                                  "Sat,Jan 07",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: CupertinoColors.black,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Divider(
                              thickness: 1,
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  showDialog(
                                      context: context,

                                      builder: (context) => ChooseRoomPerson());
                                });
                              },
                              child: Row(
                                children: [
                                  Padding(padding: EdgeInsets.all(5)),
                                  Icon(
                                    Icons.person_outline_sharp,
                                    size: 20,
                                    color: CupertinoColors.black,
                                  ),
                                  Padding(padding: EdgeInsets.all(5)),
                                  Text(
                                    "1 room 2 adults",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: CupertinoColors.black,
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.all(5)),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Divider(),
                            Padding(padding: EdgeInsets.all(5)),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    height: h / 20,
                                    width: h / 20,
                                    child: Icon(
                                      Icons.location_pin,
                                      size: 20,
                                      color: CupertinoColors.activeBlue,
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: CupertinoColors.activeBlue,
                                            width: 2),
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Container(
                                  height: h / 20,
                                  width: w / 1.4,
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
                          ],
                        )
                      : Column(
                          children: [
                            Padding(padding: EdgeInsets.all(5)),
                            Divider(
                              thickness: 1,
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.all(5)),
                                Icon(
                                  Icons.search,
                                  size: 20,
                                  color: CupertinoColors.black,
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                Text(
                                  "Near me",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: CupertinoColors.black,
                                  ),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Divider(
                              thickness: 1,
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.all(5)),
                                Icon(
                                  Icons.calendar_month,
                                  size: 20,
                                  color: CupertinoColors.black,
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                Text(
                                  "Fri,Jan 06",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: CupertinoColors.black,
                                  ),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Divider(
                              thickness: 1,
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  showDialog(
                                      context: context,

                                      builder: (context) => ChooseRoomPerson1());
                                });
                              },
                              child: Row(
                                children: [
                                  Padding(padding: EdgeInsets.all(5)),
                                  Icon(
                                    Icons.person_outline_sharp,
                                    size: 20,
                                    color: CupertinoColors.black,
                                  ),
                                  Padding(padding: EdgeInsets.all(5)),
                                  Text(
                                    "1 room 2 adults",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: CupertinoColors.black,
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.all(5)),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Divider(
                              thickness: 1,
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    height: h / 20,
                                    width: h / 20,
                                    child: Icon(
                                      Icons.location_pin,
                                      size: 20,
                                      color: CupertinoColors.activeBlue,
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: CupertinoColors.activeBlue,
                                            width: 2),
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Container(
                                  height: h / 20,
                                  width: w / 1.4,
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
                          ],
                        )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChooseRoomPerson extends StatefulWidget {
  const ChooseRoomPerson({Key? key}) : super(key: key);

  @override
  State<ChooseRoomPerson> createState() => _ChooseRoomPersonState();
}

class _ChooseRoomPersonState extends State<ChooseRoomPerson> {
  @override
  Widget build(BuildContext context) {

    return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        title: Text("Guest Details",style: TextStyle(
          color: CupertinoColors.activeBlue,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),
        elevation: 10,
        content:Builder(
          builder: (context){
             double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return  Container(
              height: h/2.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Text("1",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text("Room",style: TextStyle(
                          color: CupertinoColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h/18,
                          width: w/18,
                          decoration: BoxDecoration(
                            border: Border.all(color: CupertinoColors.activeBlue,width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Icon(Icons.add,size: 15,color: CupertinoColors.activeBlue,)),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h/18,
                          width: w/18,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26,width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Icon(Icons.remove,size: 15,color: Colors.black26,)),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                      ]),
                  Divider(thickness: 2,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Text("1",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text("Adults",style: TextStyle(
                          color: CupertinoColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h/18,
                          width: w/18,
                          decoration: BoxDecoration(
                            border: Border.all(color: CupertinoColors.activeBlue,width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Icon(Icons.add,size: 15,color: CupertinoColors.activeBlue,)),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h/18,
                          width: w/18,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26,width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Icon(Icons.remove,size: 15,color: Colors.black26,)),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                      ]),
                  Divider(thickness: 2,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Text("1",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text("Children",style: TextStyle(
                          color: CupertinoColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                        Padding(padding: EdgeInsets.all(2)),
                        Container(
                          height: h/18,
                          width: w/18,
                          decoration: BoxDecoration(
                            border: Border.all(color: CupertinoColors.activeBlue,width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Icon(Icons.add,size: 15,color: CupertinoColors.activeBlue,)),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h/18,
                          width: w/18,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26,width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Icon(Icons.remove,size: 15,color: Colors.black26,)),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                      ]),
                  Divider(thickness: 2,),
                  Padding(padding: EdgeInsets.all(20)),
                  GestureDetector(
                    onTap: (){
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
class ChooseRoomPerson1 extends StatefulWidget {
  const ChooseRoomPerson1({Key? key}) : super(key: key);

  @override
  State<ChooseRoomPerson1> createState() => _ChooseRoomPerson1State();
}

class _ChooseRoomPerson1State extends State<ChooseRoomPerson1> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        title: Text("Guest Details",style: TextStyle(
          color: CupertinoColors.activeBlue,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),
        elevation: 10,
        content:Builder(
          builder: (context){
            double h = MediaQuery.of(context).size.height;
            double w = MediaQuery.of(context).size.width;
            return  Container(
              height: h/2.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Text("1",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text("Room",style: TextStyle(
                          color: CupertinoColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h/18,
                          width: w/18,
                          decoration: BoxDecoration(
                            border: Border.all(color: CupertinoColors.activeBlue,width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Icon(Icons.add,size: 15,color: CupertinoColors.activeBlue,)),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h/18,
                          width: w/18,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26,width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Icon(Icons.remove,size: 15,color: Colors.black26,)),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                      ]),
                  Divider(thickness: 2,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Text("1",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text("Adults",style: TextStyle(
                          color: CupertinoColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h/18,
                          width: w/18,
                          decoration: BoxDecoration(
                            border: Border.all(color: CupertinoColors.activeBlue,width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Icon(Icons.add,size: 15,color: CupertinoColors.activeBlue,)),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h/18,
                          width: w/18,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26,width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Icon(Icons.remove,size: 15,color: Colors.black26,)),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                      ]),
                  Divider(thickness: 2,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Text("1",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text("Children",style: TextStyle(
                          color: CupertinoColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                        Padding(padding: EdgeInsets.all(2)),
                        Container(
                          height: h/18,
                          width: w/18,
                          decoration: BoxDecoration(
                            border: Border.all(color: CupertinoColors.activeBlue,width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Icon(Icons.add,size: 15,color: CupertinoColors.activeBlue,)),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          height: h/18,
                          width: w/18,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26,width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Icon(Icons.remove,size: 15,color: Colors.black26,)),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                      ]),
                  Divider(thickness: 2,),
                  Padding(padding: EdgeInsets.all(20)),
                  GestureDetector(
                    onTap: (){
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

