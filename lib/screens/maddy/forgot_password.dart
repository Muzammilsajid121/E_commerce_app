import 'package:flutter/material.dart';

class Forgot_Screen extends StatefulWidget {
  const Forgot_Screen({Key? key}) : super(key: key);

  @override
  State<Forgot_Screen> createState() => _Forgot_ScreenState();
}

class _Forgot_ScreenState extends State<Forgot_Screen> {
  final emailcontroller = TextEditingController();
  String? email;
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
              padding: const EdgeInsets.only(right: 215.0),
              child: Text(
                'Forgot password',
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
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              'Please, enter your email address. You will receive a link to create a new password via email.',
              style: TextStyle(
                  color: Colors.white, fontFamily: "Metropolis", fontSize: 14),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: emailcontroller,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.close,
                  color: Color.fromARGB(255, 235, 20, 5),
                ),
                label: Text(
                  'Email',
                  style: TextStyle(
                    color: Color.fromARGB(255, 235, 20, 5),
                  ),
                ),
                hintText: "  Email address",
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontFamily: "Metropolis",
                  fontSize: 15,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 235, 20, 5),
                  ),
                  borderRadius: BorderRadius.circular(3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 235, 20, 5),
                  ),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100.0),
            child: Text(
              'Not a valid email address. Should be your@email.com',
              style: TextStyle(
                  color: Color.fromARGB(255, 235, 20, 5),
                  fontFamily: "Metropolis",
                  fontSize: 14),
            ),
          ),
          SizedBox(
            height: 110,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: SizedBox(
              width: 430,
              height: 50,
              //wrap elevated button with sizedBox widget
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    email = emailcontroller.text;
                  });
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (BuildContext context) {
                  //       return Home();
                  //     },
                  //   ),
                  // );
                },
                // style: ElevatedButton.styleFrom(shadowColor: Colors.green),
                child: Text(
                  'SEND',
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

          // Text(
          //   "Firstname : $userName ",
          // ),
          // Text(
          //   "Firstname : $email ",
          // ),
        ]),
      ),
    );
  }
}
