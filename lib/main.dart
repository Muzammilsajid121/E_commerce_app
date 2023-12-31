import 'package:e_commerce_app/screens/categories_2.dart';
import 'package:e_commerce_app/screens/maddy/forgot_pass.dart';
import 'package:e_commerce_app/screens/maddy/login_screen.dart';
import 'package:e_commerce_app/screens/maddy/my_profile.dart';
import 'package:e_commerce_app/screens/maddy/sign_up.dart';
import 'package:e_commerce_app/screens/my_orders.dart';
import 'package:e_commerce_app/screens/order_details.dart';
import 'package:e_commerce_app/screens/setting.dart';
import 'package:e_commerce_app/screens/visual_search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screens/bottom_nav-bar.dart';
import 'screens/catalog1.dart';
// import 'screens/maddy/forgot_pass.dart';
import 'screens/checkout.dart';
import 'screens/favourities.dart';
import 'screens/maddy/splash_screen.dart';
import 'screens/main_page.dart';
import 'screens/main_page2.dart';
import 'screens/my_bag.dart';
import 'screens/producr_card.dart';
import 'screens/rating.dart';
import 'screens/stars_rating.dart';
import 'screens/success.dart';
import 'screens/producr_card.dart';

void main() {
  runApp(const MyApp());
}

//SharedPrefences
SharedPreferences? localStorage;
final userNamecontroller = TextEditingController();
final emailcontroller = TextEditingController();
//

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Investment App',
      theme: ThemeData(
        fontFamily: 'Metropopolis',
        // colorSchemeSeed: Colors.black,
        //TEXT THEMES
        //
        textTheme: TextTheme(
            //Body Small
            bodySmall:
                GoogleFonts.metrophobic(fontSize: 14, color: Color(0xffABB4BD)),
            //Body Medium
            bodyMedium: GoogleFonts.dmSans(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.w700),
            //
            //Body Large
            bodyLarge: GoogleFonts.dmSans(fontSize: 18, color: Colors.white),
            //title Medium
            titleMedium: GoogleFonts.montserrat(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700),
            //title Large
            titleLarge: GoogleFonts.montserrat(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: Colors.white)),

        //
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.black, foregroundColor: Colors.white),

        //
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
