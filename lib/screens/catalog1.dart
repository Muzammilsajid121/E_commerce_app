

// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:http/http.dart' as http;
// import 'package:e_commerce_app/categories2_model.dart';
// import 'package:e_commerce_app/main_page_model.dart';
// import 'sortby_bottomsheet.dart';

// class CatalogOne extends StatefulWidget {
//   final CategoryElement category1;
//   const CatalogOne({super.key, required this.category1});

//   @override
//   State<CatalogOne> createState() => _CatalogOneState();
// }

// class _CatalogOneState extends State<CatalogOne> {
//   String? id;
//   Welcome? product; // For Modal

//   @override
//   void initState() {
//     getCategories(widget.category1.id!);
//     super.initState();
//   }

//   Future<void> getCategories(String id) async {
//     http.Response response = await http.get(Uri.parse(
//         'https://ecommerce.salmanbediya.com/products/get/category/$id'));
//     print(response.statusCode);
//     print(response.body);
//     setState(() {
//       product = welcomeFromJson(response.body);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Color.fromARGB(255, 0, 10, 20),
//         appBar: AppBar(
//           backgroundColor: Color.fromARGB(255, 0, 10, 20),
//           elevation: 0,
//           leading: Icon(
//             Icons.arrow_back_ios,
//             color: Colors.white,
//           ),
//           actions: [
//             Padding(
//               padding: const EdgeInsets.only(right: 16.0),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 40.0),
//                 child: Icon(Icons.search),
//               ),
//             ),
//           ],
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 width: double.infinity,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10.0),
//                       child: Text(
//                         "${widget.category1.name}",
//                         style: TextStyle(
//                           fontFamily: "Metropolis",
//                           fontWeight: FontWeight.bold,
//                           fontSize: 34,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 12,
//                     ),

//                     DefaultTabController(
//                       length: 5,
//                       child: Column(
//                         children: [
//                           TabBar(
//                             indicator: null,
//                             automaticIndicatorColorAdjustment: false,
//                             indicatorWeight: 0.1,
//                             isScrollable: true, // Enable scrolling for tabs
//                             labelColor:
//                                 Colors.red, // Set selected tab text color
//                             unselectedLabelColor:
//                                 Colors.black, // Set unselected tab text color
//                             tabs: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(16)),
//                                 width: 100,
//                                 height: 25,
//                                 alignment: Alignment.center,
//                                 child: Text('t-shirts'),
//                               ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(16)),
//                                 width: 100,
//                                 height: 25,
//                                 alignment: Alignment.center,
//                                 child: Text('tops'),
//                               ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(16)),
//                                 width: 100,
//                                 height: 25,
//                                 alignment: Alignment.center,
//                                 child: Text('sleeveless'),
//                               ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(16)),
//                                 width: 100,
//                                 height: 25,
//                                 alignment: Alignment.center,
//                                 child: Text('blouses'),
//                               ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(16)),
//                                 width: 100,
//                                 height: 25,
//                                 alignment: Alignment.center,
//                                 child: Text('prexy'),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 8),
//                         ],
//                       ),
//                     ),

//                     //Row
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 320.0),
//                           child: Container(
//                             width: 180,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               children: [
//                                 ElevatedButton(
//                                     child: Row(
//                                       mainAxisAlignment: MainAxisAlignment.end,
//                                       children: [
//                                         const Icon(
//                                           Icons.swap_vert,
//                                           color: Colors.white,
//                                         ),
//                                         Text(
//                                           "Price: lowest to high",
//                                           style: TextStyle(
//                                             fontFamily: "Metropolis",
//                                             fontSize: 11,
//                                             color: Colors.white,
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                     style: ElevatedButton.styleFrom(
//                                       primary: Color.fromARGB(255, 0, 10, 20),
//                                       shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(20),
//                                       ),
//                                     ),
//                                     onPressed: () {
//                                       showModalBottomSheet(
//                                           backgroundColor:
//                                               Color.fromARGB(255, 0, 10, 20),
//                                           // isScrollControlled: true,
//                                           elevation: 0,
//                                           isDismissible: true,
//                                           enableDrag: true,
//                                           shape: RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.only(
//                                             topLeft: Radius.circular(20),
//                                             topRight: Radius.circular(20),
//                                           )),
//                                           context: context,
//                                           builder: (context) {
//                                             return Column(
//                                               children: [
//                                                 SizedBox(
//                                                   height: 10,
//                                                 ),
//                                                 Container(
//                                                   height: 5,
//                                                   width: 56,
//                                                   decoration: BoxDecoration(
//                                                       color: Color.fromARGB(
//                                                           255, 177, 176, 176),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               20)),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 8,
//                                                 ),
//                                                 Text(
//                                                   "Sort by",
//                                                   style: TextStyle(
//                                                       fontSize: 18,
//                                                       color: Colors.white),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 46,
//                                                 ),
//                                                 Padding(
//                                                   padding: const EdgeInsets
//                                                           .symmetric(
//                                                       horizontal: 20.0,
//                                                       vertical: 0.0),
//                                                   child: FlatButton(
//                                                       height: 50,
//                                                       padding:
//                                                           EdgeInsets.all(20),
//                                                       color: Color.fromARGB(
//                                                           255, 0, 10, 20),
//                                                       onPressed: () {},
//                                                       child: Row(
//                                                         children: [
//                                                           Expanded(
//                                                             child: Column(
//                                                               children: [
//                                                                 Padding(
//                                                                   padding: const EdgeInsets
//                                                                           .only(
//                                                                       right:
//                                                                           380),
//                                                                   child: Text(
//                                                                     'Popular',
//                                                                     style:
//                                                                         TextStyle(
//                                                                       color: Colors
//                                                                           .white,
//                                                                       fontSize:
//                                                                           16,
//                                                                       fontWeight:
//                                                                           FontWeight
//                                                                               .bold,
//                                                                       fontFamily:
//                                                                           "Metropolis",
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       )),
//                                                 ),
//                                                 Padding(
//                                                   padding: const EdgeInsets
//                                                           .symmetric(
//                                                       horizontal: 20.0,
//                                                       vertical: 0.0),
//                                                   child: FlatButton(
//                                                       height: 50,
//                                                       padding:
//                                                           EdgeInsets.all(20),
//                                                       color: Color.fromARGB(
//                                                           255, 0, 10, 20),
//                                                       onPressed: () {},
//                                                       child: Row(
//                                                         children: [
//                                                           Expanded(
//                                                             child: Column(
//                                                               children: [
//                                                                 Padding(
//                                                                   padding: const EdgeInsets
//                                                                           .only(
//                                                                       right:
//                                                                           380),
//                                                                   child: Text(
//                                                                     'Newest',
//                                                                     style:
//                                                                         TextStyle(
//                                                                       color: Colors
//                                                                           .white,
//                                                                       fontSize:
//                                                                           16,
//                                                                       fontWeight:
//                                                                           FontWeight
//                                                                               .bold,
//                                                                       fontFamily:
//                                                                           "Metropolis",
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       )),
//                                                 ),
//                                                 Padding(
//                                                   padding: const EdgeInsets
//                                                           .symmetric(
//                                                       horizontal: 20.0,
//                                                       vertical: 0.0),
//                                                   child: FlatButton(
//                                                       height: 50,
//                                                       padding:
//                                                           EdgeInsets.all(20),
//                                                       color: Color.fromARGB(
//                                                           255, 0, 10, 20),
//                                                       onPressed: () {},
//                                                       child: Row(
//                                                         children: [
//                                                           Expanded(
//                                                             child: Column(
//                                                               children: [
//                                                                 Padding(
//                                                                   padding: const EdgeInsets
//                                                                           .only(
//                                                                       right:
//                                                                           313),
//                                                                   child: Text(
//                                                                     'Customer review',
//                                                                     style:
//                                                                         TextStyle(
//                                                                       color: Colors
//                                                                           .white,
//                                                                       fontSize:
//                                                                           16,
//                                                                       fontWeight:
//                                                                           FontWeight
//                                                                               .bold,
//                                                                       fontFamily:
//                                                                           "Metropolis",
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       )),
//                                                 ),
//                                                 FlatButton(
//                                                     height: 50,
//                                                     // padding: EdgeInsets.all(20),
//                                                     color: Color.fromARGB(
//                                                         255, 230, 5, 65),
//                                                     onPressed: () {},
//                                                     child: Row(
//                                                       children: [
//                                                         Expanded(
//                                                           child: Column(
//                                                             children: [
//                                                               Padding(
//                                                                 padding:
//                                                                     const EdgeInsets
//                                                                             .only(
//                                                                         right:
//                                                                             286),
//                                                                 child: Text(
//                                                                   'Price: lowest to high',
//                                                                   style:
//                                                                       TextStyle(
//                                                                     color: Colors
//                                                                         .black,
//                                                                     fontSize:
//                                                                         16,
//                                                                     fontWeight:
//                                                                         FontWeight
//                                                                             .bold,
//                                                                     fontFamily:
//                                                                         "Metropolis",
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     )),
//                                                 Padding(
//                                                   padding: const EdgeInsets
//                                                           .symmetric(
//                                                       horizontal: 20.0,
//                                                       vertical: 0.0),
//                                                   child: FlatButton(
//                                                       height: 50,
//                                                       padding:
//                                                           EdgeInsets.all(20),
//                                                       color: Color.fromARGB(
//                                                           255, 0, 10, 20),
//                                                       onPressed: () {},
//                                                       child: Row(
//                                                         children: [
//                                                           // Image.asset('assets/images/contact.png'),
//                                                           // SizedBox(
//                                                           //   width: 1,
//                                                           // ),
//                                                           Expanded(
//                                                             child: Column(
//                                                               children: [
//                                                                 Padding(
//                                                                   padding: const EdgeInsets
//                                                                           .only(
//                                                                       right:
//                                                                           284),
//                                                                   child: Text(
//                                                                     'Price: highest to low',
//                                                                     style:
//                                                                         TextStyle(
//                                                                       color: Colors
//                                                                           .white,
//                                                                       fontSize:
//                                                                           16,
//                                                                       fontWeight:
//                                                                           FontWeight
//                                                                               .bold,
//                                                                       fontFamily:
//                                                                           "Metropolis",
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       )),
//                                                 ),
//                                               ],
//                                             );
//                                           });
//                                     }),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 // color:Color.fromARGB(255, 0, 10, 20),
//                 height: 600,
//                 // width: 1000,
//                 child: ListView.builder(
//                     scrollDirection: Axis.vertical,
//                     itemCount: product!.products!.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(9.0),
//                             child: Container(
//                               height: 140,
//                               width: double.infinity,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(50),
//                               ),
//                               child: Card(
//                                 color: Color.fromARGB(255, 1, 23, 44),
//                                 // color: Color.fromARGB(255, 0, 10, 20),
//                                 child: Row(
//                                   children: [
//                                     Container(
//                                       width: 100,
//                                       height: 200,
//                                       // width: 120,
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(6),
//                                         child: Image.network(
//                                           "${product!.products![index].image}",
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 20,
//                                     ),
//                                     Column(
//                                       children: [
//                                         SizedBox(
//                                           width: 150,
//                                           child: Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 20),
//                                             child: Text(
//                                               maxLines: 1,
//                                               overflow: TextOverflow.ellipsis,
//                                               "${product!.products![index].name}",
//                                               style: TextStyle(
//                                                   fontFamily: "Metropolis",
//                                                   fontSize: 16,
//                                                   // fontWeight: FontWeight.bold,
//                                                   color: Colors.white),
//                                             ),
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           width: 150,
//                                           child: Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 6),
//                                             child: Text(
//                                               maxLines: 1,
//                                               overflow: TextOverflow.ellipsis,
//                                               "${product!.products![index].description}",
//                                               style: TextStyle(
//                                                   fontFamily: "Metropolis",
//                                                   fontSize: 11,
//                                                   color: Colors.grey),
//                                             ),
//                                           ),
//                                         ),
//                                         Row(
//                                           children: [
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   right: 0.0),
//                                               child: RatingBar.builder(
//                                                   initialRating: 2,
//                                                   minRating: 1,
//                                                   itemSize: 26,
//                                                   direction: Axis.horizontal,
//                                                   allowHalfRating: true,
//                                                   itemPadding:
//                                                       EdgeInsets.symmetric(
//                                                           horizontal: 0),
//                                                   itemBuilder: (context, _) =>
//                                                       SizedBox(
//                                                           width: 30,
//                                                           child: Icon(
//                                                             Icons.star,
//                                                             color: Colors.amber,
//                                                             size: 20,
//                                                           )),
//                                                   onRatingUpdate: (rating) {
//                                                     print(rating);
//                                                   }),
//                                             ),
//                                             Padding(
//                                               padding:
//                                                   const EdgeInsets.only(top: 6),
//                                               child: Text(
//                                                 "(${product!.products![index].rating})",
//                                                 style: TextStyle(
//                                                     fontFamily: "Metropolis",
//                                                     fontSize: 14,
//                                                     color: Colors.red),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.only(
//                                               right: 93.0, top: 6),
//                                           child: Text(
//                                             "${product!.products![index].price}",
//                                             style: TextStyle(
//                                                 fontFamily: "Metropolis",
//                                                 fontSize: 14,
//                                                 color: Colors.red),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       );
//                     }),
//               ),
//             ],
//           ),
//         ));
//   }
// }
