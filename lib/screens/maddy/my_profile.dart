// import 'dart:html';

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int currentSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 10, 20),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 10, 20),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 448.0),
          child: Icon(Icons.search, color: Colors.white),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Color.fromARGB(255, 0, 10, 20),
      //   currentIndex: currentSelectedIndex,
      //   unselectedItemColor: Colors.white,
      //   fixedColor: Colors.white,
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Image.asset('assets/images/hm.png'),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset('assets/images/sp.png'),
      //       label: "Shop",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset('assets/images/bg.png'),
      //       label: "Bag",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset('assets/images/ht.png'),
      //       label: "Favorites",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset('assets/images/ac.png'),
      //       label: "Profile",
      //     ),
      //   ],
      //   onTap: ((index) {
      //     setState(() {
      //       currentSelectedIndex = index;
      //     });
      //   }),
      // ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 320.0),
              child: Text(
                "My profile",
                style: TextStyle(
                    fontSize: 34,
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(
                    height: 65,
                    child: Image.asset('assets/pro.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 11),
                        child: Text(
                          'Matilda Brown',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Metropolis",
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, left: 40.0),
                        child: Text(
                          'matildabrown@mail.com',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "SF Compact Display",
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: ElevatedButton(
                  // height: 50,
                  // padding: EdgeInsets.all(20),
                  // color: Color.fromARGB(255, 0, 10, 20),
                  onPressed: () {},
                  child: Row(
                    children: [
                      // Image.asset('assets/images/contact.png'),
                      // SizedBox(
                      //   width: 1,
                      // ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 340),
                              child: Text(
                                'My orders',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Metropolis",
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8, right: 295.0),
                              child: Text(
                                'Already have 12 orders',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                  fontFamily: "Metropolis",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ],
                  )),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: ElevatedButton(
                  // height: 50,
                  // padding: EdgeInsets.all(20),
                  // color: Color.fromARGB(255, 0, 10, 20),
                  onPressed: () {},
                  child: Row(
                    children: [
                      // Image.asset('assets/images/funding.png'),
                      // SizedBox(
                      //   width: 50,
                      // ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 272),
                              child: Text(
                                'Shipping addresses',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Metropolis",
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8, right: 354.0),
                              child: Text(
                                '3 dresses',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                  fontFamily: "Metropolis",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ],
                  )),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: ElevatedButton(
                  // height: 50,
                  // padding: EdgeInsets.all(20),
                  // color: Color.fromARGB(255, 0, 10, 20),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) {
                    //       return BankInfo();
                    //     },
                    //   ),
                    // );
                  },
                  child: Row(
                    children: [
                      // Image.asset('assets/images/bank.png'),
                      // SizedBox(
                      //   width: 50,
                      // ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 279),
                              child: Text(
                                'Payment methods',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Metropolis",
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8, right: 347.0),
                              child: Text(
                                'Visa  **34',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                  fontFamily: "Metropolis",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ],
                  )),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: ElevatedButton(
                  // height: 50,
                  // padding: EdgeInsets.all(20),
                  // color: Color.fromARGB(255, 0, 10, 20),
                  onPressed: () {},
                  child: Row(
                    children: [
                      // Image.asset('assets/images/Shape.png'),
                      // SizedBox(
                      //   width: 50,
                      // ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 318),
                              child: Text(
                                'Promocodes',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Metropolis",
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8, right: 260.0),
                              child: Text(
                                'You have special promocodes',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                  fontFamily: "Metropolis",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ],
                  )),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: ElevatedButton(
                  // height: 50,
                  // padding: EdgeInsets.all(20),
                  // color: Color.fromARGB(255, 0, 10, 20),
                  onPressed: () {},
                  child: Row(
                    children: [
                      // Image.asset('assets/images/setting.png'),
                      // SizedBox(
                      //   width: 50,
                      // ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 324),
                              child: Text(
                                'My reviews',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Metropolis",
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8, right: 308.0),
                              child: Text(
                                'Reviews for 4 items',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                  fontFamily: "Metropolis",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ],
                  )),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: ElevatedButton(
                  // height: 50,
                  // padding: EdgeInsets.all(20),
                  // color: Color.fromARGB(255, 0, 10, 20),
                  onPressed: () {},
                  child: Row(
                    children: [
                      // Image.asset('assets/images/setting.png'),
                      // SizedBox(
                      //   width: 50,
                      // ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 339),
                              child: Text(
                                'Settings',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Metropolis",
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8, right: 280.0),
                              child: Text(
                                'Notifications, password',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                  fontFamily: "Metropolis",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
