import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/screens/maddy/sign_up.dart';

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
    Future.delayed(const Duration(seconds: 3), SwitchToSignUp);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          // child: Image.asset('assets/io.png'),
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "E-Commerce App",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.purple),
          ),
          const SizedBox(
            height: 10,
          ),
          Lottie.asset('assets/anime.json', height: 300, width: 250),
        ],
      )),
    );
  }
}
