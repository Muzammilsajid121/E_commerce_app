import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:e_commerce_app/screens/maddy/login_screen.dart';
import 'forgot_pass.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  //Functionality

  TextEditingController nameController = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();

  void login(String name, String email, String password) async {
    try {
      http.Response response = await post(
          Uri.parse('https://ecommerce.salmanbediya.com/users/register'),
          body: {'name': name, 'email': email, 'password': password});
      if (response.statusCode == 201) {
        Fluttertoast.showToast(
            msg: "User created successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 4,
            backgroundColor: Colors.red,
            textColor: Colors.black,
            fontSize: 16.0);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return LoginScreenn();
            },
          ),
        );
      } else {
        Text(
          'Failed',
          style: TextStyle(color: Colors.white),
        );
        print("Failed");
        Fluttertoast.showToast(
            msg: "Failed",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 10,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
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
        //AppBar
        backgroundColor: Color.fromARGB(255, 0, 10, 20),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 10, 20),
          elevation: 0,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        //
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            //
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign up',
                      style: TextStyle(
                        fontFamily: "Metropolis",
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                        color: Colors.white,
                      ),
                    ),
                    //
                    const SizedBox(
                      height: 30,
                    ),

                    //Text Fields
                    //1st
                    TextField(
                      style: TextStyle(color: Colors.white),
                      controller: nameController,
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
                    const SizedBox(
                      height: 12,
                    ),

                    //2nd
                    TextField(
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
                    const SizedBox(
                      height: 12,
                    ),

                    //3rd
                    TextField(
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
                    SizedBox(
                      height: 20,
                    ),

                    //Account Already
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                            return ForgotPass();
                          })),
                          child: const Text(
                            'Already have an account?',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "Metropolis"),
                          ),
                        ),
                        Image.asset('assets/r.png'),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),

                    //Elevated Button

                    Center(
                      child: SizedBox(
                        height: 48,
                        width: 440,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            side: BorderSide(color: Colors.white, width: 2),
                          ),
                          onPressed: () {
                            login(
                                nameController.text.toString(),
                                emailcontroller.text.toString(),
                                Passwordcontroller.text.toString());
                            setState(() {});
                          },

                          //chi;d of elevated
                          child: Text(
                            "Sign Up",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ),
                    ),
                    //
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: const Text(
                        'Or sign up with social account',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Metropolis",
                            fontSize: 15),
                      ),
                    ),

                    const SizedBox(
                      height: 12,
                    ),
                    //
                    //Google and Facebook
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
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
                        SizedBox(
                          width: 12,
                        ),

                        //FB Container
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
                    )
                  ]),
            ),
          ),
        ));
  }
}
