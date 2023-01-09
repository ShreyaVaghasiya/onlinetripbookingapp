import 'package:flutter/material.dart';
import 'package:onlinetripbookingapp/All%20Main%20Content%20Pages/6MainServices/FlightBookingPage.dart';
import 'package:onlinetripbookingapp/LogIn%20and%20Logout%20Mechanism/LogInPage.dart';
import 'All Main Content Pages/6MainServices/HotelBookingPage.dart';
import 'All Main Content Pages/BookedTripPage.dart';
import 'All Main Content Pages/HomeScreenPage.dart';
import 'LogIn and Logout Mechanism/UserDataSubmissionPage.dart';
import 'LogIn and Logout Mechanism/otpvalidatePage.dart';
import 'Splash and IntroScreen/SplashScreenPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Splash_Screen(),
        'login': (context) => Log_In(),
        'otpvalidate': (context) => Otp_Validate(),
        'submitdata': (context) => Submit_Data(),
        'home': (context) => HomeScreen(),
        'bookedtrip' : (context) => Booking_Trip(),
        'hotelbook' : (context) =>  Booking_Hotel(),
        'flightbook' : (context) =>Flight_Booking(),

      },
    ),
  );
}
