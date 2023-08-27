import 'package:flutter/material.dart';

import '../visual_search.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  //
  final emailcontroller = TextEditingController();
  String? email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBAr
      backgroundColor: Color.fromARGB(255, 0, 10, 20),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 10, 20),
        elevation: 0,
        // leading: const Icon(
        //   Icons.arrow_back_ios,
        //   color: Colors.white,
        // ),
      ),

      //
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Forgot password',
                  style: TextStyle(
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                //
                const Text(
                  'Please, enter your email address. You will receive a link to create a new password via email.',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Metropolis",
                      fontSize: 14),
                ),
                const SizedBox(
                  height: 12,
                ),

                //TextField
                TextField(
                  style: const TextStyle(color: Colors.white),
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.close,
                      color: Color.fromARGB(255, 235, 20, 5),
                    ),
                    label: const Text(
                      'Email',
                      style: TextStyle(
                        color: Color.fromARGB(255, 235, 20, 5),
                      ),
                    ),
                    hintText: "  Email address",
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontFamily: "Metropolis",
                      fontSize: 15,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
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
                const SizedBox(
                  height: 8,
                ),

                //Text
                const Text(
                  'Not a valid email address. Should be your@email.com',
                  style: TextStyle(
                      color: Color.fromARGB(255, 235, 20, 5),
                      fontFamily: "Metropolis",
                      fontSize: 14),
                ),
                const SizedBox(
                  height: 22,
                ),

                //Elevated Button
                Center(
                  child: SizedBox(
                    height: 48,
                    width: 440,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 230, 5, 65),
                        side: BorderSide(color: Colors.white, width: 2),
                      ),
                      onPressed: () {
                        setState(() {
                          email = emailcontroller.text;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const VisualSearch();
                            },
                          ),
                        );
                      },

                      //chi;d of elevated
                      child: Text(
                        "Send",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
