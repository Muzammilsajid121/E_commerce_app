import 'package:e_commerce_app/screens/maddy/forgot_password.dart';
import 'package:e_commerce_app/screens/maddy/login.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/screens/maddy/sign_up.dart';

import '../sgn.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void SwitchToSignUp() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SignUP()));
  }

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), SwitchToSignUp);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('assets/io.png'),
      ),
    );
  }
}
