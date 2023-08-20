// import 'package:flutter/material.dart';

// class AnBottom_sheet extends StatefulWidget {
//   const AnBottom_sheet({Key? key}) : super(key: key);

//   @override
//   State<AnBottom_sheet> createState() => _Bottom_sheetState();
// }

// class _Bottom_sheetState extends State<AnBottom_sheet> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//             child: Text("Show Bottom Sheet"),
//             onPressed: () {
//               showModalBottomSheet(
//                   backgroundColor: Color.fromARGB(255, 0, 10, 20),
//                   // isScrollControlled: true,
//                   elevation: 0,
//                   isDismissible: true,
//                   enableDrag: true,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(20),
//                     topRight: Radius.circular(20),
//                   )),
//                   context: context,
//                   builder: (context) {
//                     return Column(
//                       children: [
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Container(
//                           height: 5,
//                           width: 56,
//                           decoration: BoxDecoration(
//                               color: Color.fromARGB(255, 177, 176, 176),
//                               borderRadius: BorderRadius.circular(20)),
//                         ),
//                         SizedBox(
//                           height: 8,
//                         ),
//                         Text(
//                           "Sort by",
//                           style: TextStyle(fontSize: 18, color: Colors.white),
//                         ),
//                         SizedBox(
//                           height: 46,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 20.0, vertical: 0.0),
//                           child: FlatButton(
//                               height: 50,
//                               padding: EdgeInsets.all(20),
//                               color: Color.fromARGB(255, 0, 10, 20),
//                               onPressed: () {},
//                               child: Row(
//                                 children: [
//                                   // Image.asset('assets/images/contact.png'),
//                                   // SizedBox(
//                                   //   width: 1,
//                                   // ),
//                                   Expanded(
//                                     child: Column(
//                                       children: [
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(right: 380),
//                                           child: Text(
//                                             'Popular',
//                                             style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 16,
//                                               fontWeight: FontWeight.bold,
//                                               fontFamily: "Metropolis",
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               )),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 20.0, vertical: 0.0),
//                           child: FlatButton(
//                               height: 50,
//                               padding: EdgeInsets.all(20),
//                               color: Color.fromARGB(255, 0, 10, 20),
//                               onPressed: () {},
//                               child: Row(
//                                 children: [
//                                   Expanded(
//                                     child: Column(
//                                       children: [
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(right: 380),
//                                           child: Text(
//                                             'Newest',
//                                             style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 16,
//                                               fontWeight: FontWeight.bold,
//                                               fontFamily: "Metropolis",
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               )),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 20.0, vertical: 0.0),
//                           child: FlatButton(
//                               height: 50,
//                               padding: EdgeInsets.all(20),
//                               color: Color.fromARGB(255, 0, 10, 20),
//                               onPressed: () {},
//                               child: Row(
//                                 children: [
//                                   Expanded(
//                                     child: Column(
//                                       children: [
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(right: 313),
//                                           child: Text(
//                                             'Customer review',
//                                             style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 16,
//                                               fontWeight: FontWeight.bold,
//                                               fontFamily: "Metropolis",
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               )),
//                         ),
//                         FlatButton(
//                             height: 50,
//                             // padding: EdgeInsets.all(20),
//                             color: Color.fromARGB(255, 230, 5, 65),
//                             onPressed: () {},
//                             child: Row(
//                               children: [
//                                 Expanded(
//                                   child: Column(
//                                     children: [
//                                       Padding(
//                                         padding:
//                                             const EdgeInsets.only(right: 286),
//                                         child: Text(
//                                           'Price: lowest to high',
//                                           style: TextStyle(
//                                             color: Colors.black,
//                                             fontSize: 16,
//                                             fontWeight: FontWeight.bold,
//                                             fontFamily: "Metropolis",
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             )),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 20.0, vertical: 0.0),
//                           child: FlatButton(
//                               height: 50,
//                               padding: EdgeInsets.all(20),
//                               color: Color.fromARGB(255, 0, 10, 20),
//                               onPressed: () {},
//                               child: Row(
//                                 children: [
//                                   // Image.asset('assets/images/contact.png'),
//                                   // SizedBox(
//                                   //   width: 1,
//                                   // ),
//                                   Expanded(
//                                     child: Column(
//                                       children: [
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(right: 284),
//                                           child: Text(
//                                             'Price: highest to low',
//                                             style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 16,
//                                               fontWeight: FontWeight.bold,
//                                               fontFamily: "Metropolis",
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               )),
//                         ),
//                       ],
//                     );
//                   });
//             }),
//       ),
//     );
//   }
// }
