// import 'package:flutter/material.dart';

// import 'forgot_pass.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int currentSelectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: Color.fromARGB(255, 0, 10, 20),
//           currentIndex: currentSelectedIndex,
//           unselectedItemColor: Colors.white,
//           fixedColor: Colors.white,
//           type: BottomNavigationBarType.fixed,
//           items: [
//             BottomNavigationBarItem(
//               icon: Image.asset('assets/images/hm.png'),
//               label: "Home",
//             ),
//             BottomNavigationBarItem(
//               icon: Image.asset('assets/images/sp.png'),
//               label: "Shop",
//             ),
//             BottomNavigationBarItem(
//               icon: Image.asset('assets/images/bg.png'),
//               label: "Bag",
//             ),
//             BottomNavigationBarItem(
//               icon: Image.asset('assets/images/ht.png'),
//               label: "Favorites",
//             ),
//             BottomNavigationBarItem(
//               icon: Image.asset('assets/images/ac.png'),
//               label: "Profile",
//             ),
//           ],
//           onTap: ((index) {
//             setState(() {
//               currentSelectedIndex = index;
//             });
//           }),
//         ),
//         backgroundColor: Color.fromARGB(255, 0, 10, 20),
//         body: Column(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   height: 500,
//                   width: double.infinity,
//                   child: Image.asset(
//                     'assets/images/men.jpg',

//                     // width: double.infinity,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 14, top: 270.0),
//                       child: Text(
//                         'Fashion',
//                         style: TextStyle(
//                           fontSize: 48,
//                           fontFamily: 'Metropolis',
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     // SizedBox(
//                     //   height: 1,
//                     // ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 60.0),
//                       child: Text(
//                         'sale',
//                         style: TextStyle(
//                           fontSize: 48,
//                           fontFamily: 'Metropolis',
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 30.0),
//                       child: SizedBox(
//                         width: 160,
//                         height: 36,
//                         //wrap elevated button with sizedBox widget
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (BuildContext context) {
//                                   return Forgot_pass();
//                                 },
//                               ),
//                             );
//                           },
//                           // style: ElevatedButton.styleFrom(shadowColor: Colors.green),
//                           child: Text(
//                             'Check',
//                             style: TextStyle(
//                                 fontFamily: "Metropolis", fontSize: 15),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                             primary: Color.fromARGB(255, 230, 5, 65),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 14,
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 14.0),
//                   child: Text(
//                     'New',
//                     style: TextStyle(
//                       fontSize: 34,
//                       fontFamily: 'Metropolis',
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 360,
//                 ),
//                 Text(
//                   'View all',
//                   style: TextStyle(
//                     fontSize: 11,
//                     fontFamily: 'Metropolis',
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ));
//   }
// }
