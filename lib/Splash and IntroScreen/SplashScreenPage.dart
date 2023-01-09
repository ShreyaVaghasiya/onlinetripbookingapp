import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
                height: h,
                width: w,
                child: const Image(
                  image: AssetImage('assets/myimages/splashimage.png'),
                  fit: BoxFit.cover,
                )),
            Positioned(
              top: h / 3,
              left: w / 5,
              bottom: h / 4,
              child: const Text(
                "Celestial Trip",
                style: TextStyle(
                  color: CupertinoColors.systemRed,
                  fontSize: 55,
                  fontFamily: 'Sunny Spells',
                ),
              ),
            ),
            Positioned(
              top: h / 2.3,
              left: w / 4,
              child: SizedBox(
                height: h / 10,
                width: w / 2,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).pushReplacementNamed('login');
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       Text(
                        "Let's Go",
                        style: GoogleFonts.prostoOne(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: CupertinoColors.black,
                          )
                        )
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      const Icon(
                        CupertinoIcons.forward,
                        size: 35,
                        color: CupertinoColors.black,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
