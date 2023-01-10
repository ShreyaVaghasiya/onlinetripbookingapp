import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinetripbookingapp/GlobalVariabls/UiScreensVariable.dart';
import 'package:onlinetripbookingapp/GlobalVariabls/loginvariablepage.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CarouselController MyCarouselController = CarouselController();
  int i = 0;
  List Carouselimages = [
    'assets/CarouselImages/pic1.png',
    'assets/CarouselImages/pic2.png',
    'assets/CarouselImages/pic3.png',
    'assets/CarouselImages/pic4.png',
    'assets/CarouselImages/pic5.png',
  ];
  List<Map<String, dynamic>> Review = [
    {
      'name': 'Nina Gupta',
      'star': '⭐⭐⭐⭐⭐',
      'note':
          'I Satisfy for this app.it is fabouls.we have to trust on itTrustpilot. Trustpilot is the worlds most powerful review platform, helping your business collect and easily manage customer reviews',
    },
    {
      'name': 'Karishma Datta',
      'star': '⭐⭐⭐',
      'note':
          'Customer reviews build something known as social proof, a phenomenon that states people are influenced by those around them. This might include friends and family, industry experts and influencers, or even internet strangers. '
    },
    {
      'name': 'Manisha Dave',
      'star': '⭐⭐⭐⭐',
      'note':
          'Think about the last time you tried a new restaurant. Or bought a vacuum. You probably looked for reviews online first, right? When considering a purchase, people want first-hand perspectives from other people just like them. '
    },
    {
      'name': 'Neha Thakkar',
      'star': '⭐⭐⭐',
      'note':
          'Social media is becoming just as much a resource for businesses that want to build brand awareness as it is for people who are interested in connecting with brands. But don’t just your social media campaigns to get prospects. '
    },
    {
      'name': 'Heena Patel',
      'star': '⭐⭐⭐⭐⭐',
      'note':
          'We all love a good story—and that’s probably clear in the review types that we’ve listed so far. Customers want to see themselves in the people your company has already helped; they want to know what your customer experience is like. One way to do this is through customer stories and interviews. '
    }
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: (UiGlobalVariable.Navigationindex == 1)
          ? Column()
          : (UiGlobalVariable.Navigationindex == 2)
              ? Column()
              : Column(
                  children: [
                    Stack(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Container(
                            height: h / 5.1,
                            width: w,
                            child: Image(
                              image:
                                  AssetImage('assets/myimages/homeimage.png'),
                              fit: BoxFit.cover,
                            )),
                        Padding(padding: EdgeInsets.all(10)),
                        Positioned(
                          bottom: h / 20,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: WidgetAnimator(
                              atRestEffect: WidgetRestingEffects.bounce(),
                              child: Text(
                                "Celestial Trip",
                                style: TextStyle(
                                  color: CupertinoColors.activeBlue,
                                  fontSize: 35,
                                  fontFamily: 'Sunny Spells',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        Positioned(
                          bottom: h / 70,
                          child: WidgetAnimator(
                            incomingEffect:
                                WidgetTransitionEffects.outgoingSlideOutToLeft(
                              duration: Duration(seconds: 1),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Hello ${loginvariable.FirstName}",
                                style: GoogleFonts.robotoSlab(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: CupertinoColors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: h / 12,
                        width: w,
                        decoration: BoxDecoration(
                          color: CupertinoColors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10,
                                spreadRadius: 2)
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      UiGlobalVariable.Tabindex = 0;
                                    });
                                    Navigator.of(context)
                                        .pushNamed('hotelbook');
                                  },
                                  child: WidgetAnimator(
                                    incomingEffect: WidgetTransitionEffects
                                        .incomingSlideInFromLeft(
                                      duration: Duration(seconds: 1),
                                    ),
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor:
                                          CupertinoColors.systemRed,
                                      child: Icon(
                                        CupertinoIcons.house_fill,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(2)),
                                Text(
                                  "Hotel",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('trainbook');
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  WidgetAnimator(
                                    incomingEffect: WidgetTransitionEffects
                                        .incomingSlideInFromLeft(
                                      duration: Duration(seconds: 1),
                                    ),
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor:
                                          CupertinoColors.systemRed,
                                      child: Icon(
                                        CupertinoIcons.tram_fill,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.all(2)),
                                  Text(
                                    "Trains",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('flightbook');
                                  },
                                  child: WidgetAnimator(
                                    incomingEffect: WidgetTransitionEffects
                                        .incomingSlideInFromLeft(
                                      duration: Duration(seconds: 1),
                                    ),
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor:
                                          CupertinoColors.systemRed,
                                      child: Icon(
                                        Icons.flight_takeoff_outlined,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(2)),
                                Text(
                                  "Flights",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('busbook');
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  WidgetAnimator(
                                    incomingEffect: WidgetTransitionEffects
                                        .incomingSlideInFromLeft(
                                      duration: Duration(seconds: 1),
                                    ),
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor:
                                          CupertinoColors.systemRed,
                                      child: Icon(
                                        CupertinoIcons.bus,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.all(2)),
                                  Text(
                                    "buses",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('cabbook');
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  WidgetAnimator(
                                    incomingEffect: WidgetTransitionEffects
                                        .incomingSlideInFromLeft(
                                      duration: Duration(seconds: 1),
                                    ),
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor:
                                          CupertinoColors.systemRed,
                                      child: Icon(
                                        CupertinoIcons.car,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.all(2)),
                                  Text(
                                    "cabs",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CarouselSlider(
                        carouselController: MyCarouselController,
                        items: Carouselimages.map((e) {
                          return Container(
                              height: h / 3,
                              width: w / 1.3,
                              child: Image(
                                image: AssetImage(e),
                                fit: BoxFit.cover,
                              ));
                        }).toList(),
                        options: CarouselOptions(
                          autoPlayAnimationDuration: Duration(seconds: 1),
                          autoPlay: true,
                          scrollPhysics: BouncingScrollPhysics(),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            "Custmor Reviews",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  elevation: 0,
                                  splashFactory: NoSplash.splashFactory),
                              child: Text(
                                "+ Add",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: CupertinoColors.activeGreen,
                                ),
                              )),
                        ),
                      ],
                    ),
                    CarouselSlider(
                        carouselController: MyCarouselController,
                        items: Review.map((e) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: h / 5,
                              width: w / 1.3,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black26),
                                  borderRadius: BorderRadius.circular(10),
                                  color: CupertinoColors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12, blurRadius: 5)
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "${e['name']}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          color: CupertinoColors.activeBlue),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "${e['star']}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: CupertinoColors.activeBlue),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.all(5)),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "${e['note']}",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      "Thank You",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                        options: CarouselOptions(
                          autoPlayAnimationDuration: Duration(seconds: 1),
                          autoPlay: true,
                          reverse: true,
                          scrollPhysics: BouncingScrollPhysics(),
                        )),
                  ],
                ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.white38,
        color: CupertinoColors.systemRed,
        items: <Widget>[
          Icon(
            Icons.home_filled,
            size: 30,
            color: CupertinoColors.white,
          ),
          Icon(
            Icons.card_travel_rounded,
            size: 30,
            color: CupertinoColors.white,
          ),
          Icon(
            Icons.account_circle_rounded,
            size: 30,
            color: CupertinoColors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            UiGlobalVariable.Navigationindex = index;
            print(UiGlobalVariable.Navigationindex);
          });
        },
      ),
      backgroundColor: CupertinoColors.white,
    );
  }
}
