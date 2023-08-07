import 'package:e_commerce_app/screens/maddy/login.dart';
import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
  static Future init() async {
    localStorage = await SharedPreferences.getInstance();
  }
}

class _SignUpState extends State<SignUp> {
  // final userNamecontroller = TextEditingController();
  // final emailcontroller = TextEditingController();
  // String? userName;
  // String? email;
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
              padding: const EdgeInsets.only(right: 343.0),
              child: Text(
                'Sign up',
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
              obscureText: false,
              style: TextStyle(color: Colors.white),
              controller: userNamecontroller,
              decoration: InputDecoration(
                label: Text(
                  'Name',
                  style: TextStyle(color: Colors.white),
                ),
                hintText: "  Enter Name",
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
              obscureText: false,
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
              // controller: emailcontroller,
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
                  padding: const EdgeInsets.only(left: 280.0),
                  child: Text(
                    'Already have an account?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "Metropolis"),
                  ),
                ),
              ),
              Image.asset('assets/r.png'),
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
                onPressed: save,
                // style: ElevatedButton.styleFrom(shadowColor: Colors.green),
                child: Text(
                  'SIGN UP',
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
            height: 140,
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
                      child: Image.asset('assets/images/gl.png'),
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
                    child: Image.asset('assets/images/fl.png'),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
              ),
            ],
          ),
          if (localStorage != null)
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "User Logged in!!! ->  Email Id: ${localStorage?.get('email')}  Password: ${localStorage?.get('password')}",
                style: TextStyle(fontSize: 20),
              ),
            ),
        ]),
      ),
    );
  }
}

void save() async {
  await SignUp.init();
  localStorage?.setString('email', userNamecontroller.text.toString());
  localStorage?.setString('password', emailcontroller.text.toString());
}
