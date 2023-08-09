import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../visual_search.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailcontroller = TextEditingController();
  final Passwordcontroller = TextEditingController();

  void login(String email, String password) async {
    try {
      http.Response response = await put(
          Uri.parse('https://ecommerce.salmanbediya.com/users/login'),
          body: {'email': email, 'password': password});
      if (response.statusCode == 200) {
        Fluttertoast.showToast(
            msg: "User created successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 4,
            backgroundColor: Colors.green,
            textColor: Colors.black,
            fontSize: 16.0);
        print("Successfully Login");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return VisualSearch();
            },
          ),
        );
      } else {
        Fluttertoast.showToast(
            msg: "Failed",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 10,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        print("Failed");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 10, 20),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 10, 20),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 373.0),
              child: Text(
                'Login',
                style: TextStyle(
                  fontFamily: "Metropolis",
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: emailcontroller,
              decoration: InputDecoration(
                label: Text(
                  'Email',
                  style: TextStyle(color: Colors.white),
                ),
                hintText: "  Email address",
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontFamily: "Metropolis",
                  fontSize: 15,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: Passwordcontroller,
              decoration: InputDecoration(
                label: Text(
                  'Password',
                  style: TextStyle(color: Colors.white),
                ),
                hintText: "Enter Password",
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 230, 223, 223),
                  fontFamily: "Metropolis",
                  fontSize: 15,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 300.0),
                  child: Text(
                    'Forgot your password?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "Metropolis"),
                  ),
                ),
              ),
              Image.asset('assets/images/r.png'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: SizedBox(
              width: 430,
              height: 50,
              //wrap elevated button with sizedBox widget
              child: ElevatedButton(
                onPressed: () {
                  login(emailcontroller.text.toString(),
                      Passwordcontroller.text.toString());
                  setState(() {});
                },
                // style: ElevatedButton.styleFrom(shadowColor: Colors.green),
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontFamily: "Metropolis", fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 230, 5, 65),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 180,
          ),
          Text(
            'Or sign up with social account',
            style: TextStyle(
                color: Colors.white, fontFamily: "Metropolis", fontSize: 15),
          ),
          // Text(
          //   "Firstname : $userName ",
          // ),
          // Text(
          //   "Firstname : $email ",
          // ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 165.0),
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset('assets/gl.png'),
                    ),
                  ),
                  width: 80,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 80,
                height: 55,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Image.asset('assets/fl.png'),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}