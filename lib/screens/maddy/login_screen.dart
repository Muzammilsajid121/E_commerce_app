import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../visual_search.dart';

class LoginScreenn extends StatefulWidget {
  const LoginScreenn({super.key});

  @override
  State<LoginScreenn> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreenn> {
  //
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
            // width: double.infinity,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            //
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Login',
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
                      controller: emailcontroller,
                      decoration: InputDecoration(
                        label: Text(
                          'Email',
                          style: TextStyle(color: Colors.white),
                        ),
                        hintText: "example@gmail.com",
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
                      controller: Passwordcontroller,
                      decoration: InputDecoration(
                        label: Text(
                          'Password',
                          style: TextStyle(color: Colors.white),
                        ),
                        hintText: "  Enter Password",
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

                    ///
                    ////
                    ///
                    //Forgot password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                            return LoginScreenn();
                          })),
                          child: const Text(
                            'Forgot Your Password?',
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
                            backgroundColor: Color(0xffEF3651),
                            side: BorderSide(color: Colors.white, width: 2),
                          ),
                          onPressed: () {
                            login(emailcontroller.text.toString(),
                                Passwordcontroller.text.toString());
                            setState(() {});
                          },

                          //chi;d of elevated
                          child: Text(
                            "Login",
                            style: Theme.of(context).textTheme.bodyMedium,
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
                        'Or login with social account',
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
