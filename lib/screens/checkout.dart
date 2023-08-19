// import 'package:flutter/material.dart';

// class CheckOut extends StatelessWidget {
//   const CheckOut({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: Text(
//           "Checkout",
//           style: Theme.of(context).textTheme.bodyMedium,
//         ),
//         centerTitle: true,
//         foregroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       //
//       body: Container(
//         child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Shipping address",
//                   style: Theme.of(context).textTheme.bodyMedium,
//                 ),
//                 const SizedBox(
//                   height: 8,
//                 ),

//                 //Payment Box
//                 Container(
//                     width: double.infinity,
//                     height: 108,
//                     decoration: BoxDecoration(
//                       color: Color(0xff2A2C36),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     //

//                     child: Padding(
//                       padding: const EdgeInsets.all(15.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 "Jane Doe",
//                                 style: Theme.of(context).textTheme.bodyMedium,
//                               ),
//                               Text(
//                                 "Change",
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodySmall
//                                     ?.copyWith(color: Colors.red),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 8,
//                           ),
//                           Text(
//                             "3 Newbridge Court\nChino Hills, CA 91709, United States",
//                             style: Theme.of(context).textTheme.bodyMedium,
//                           ),
//                         ],
//                       ),
//                     )),
//                 const SizedBox(
//                   height: 16,
//                 ),

//                 //
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Payment",
//                       style: Theme.of(context).textTheme.bodyMedium,
//                     ),

//                     //Add Button
//                     SizedBox(
//                       width: 80,
//                       height: 25,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           elevation: 1,
//                           backgroundColor: Colors.red,
//                           side: BorderSide(color: Colors.white, width: 1),
//                         ),
//                         onPressed: () {},

//                         //chi;d of elevated
//                         child: Text(
//                           "ADD",
//                           style: Theme.of(context)
//                               .textTheme
//                               .bodySmall
//                               ?.copyWith(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 12,
//                 ),
//                 //
//                 Row(
//                   children: [
//                     Image.asset("assets/card.png"),
//                     Text(
//                       "**** **** **** 3947",
//                       style: Theme.of(context).textTheme.bodyMedium,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 16,
//                 ),
//                 //
//                 Text(
//                   "Delivery method",
//                   style: Theme.of(context).textTheme.bodyMedium,
//                 ),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 //
//                 //Cards Row
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Image.asset("assets/fedex.png"),
//                     Image.asset("assets/usps.png"),
//                     Image.asset("assets/dhl.png"),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 16,
//                 ),
//                 //Texts
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Order:",
//                       style: Theme.of(context).textTheme.bodySmall,
//                     ),
//                     Text(
//                       "112\$",
//                       style: Theme.of(context).textTheme.bodySmall,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 //
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Delivery:",
//                       style: Theme.of(context).textTheme.bodySmall,
//                     ),
//                     Text(
//                       "15\$",
//                       style: Theme.of(context).textTheme.bodySmall,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 //
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Summary:",
//                       style: Theme.of(context).textTheme.bodySmall,
//                     ),
//                     Text(
//                       "127\$",
//                       style: Theme.of(context).textTheme.bodySmall,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 16,
//                 ),
//                 //Button
//                 Center(
//                   child: SizedBox(
//                     width: 343,
//                     height: 48,
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         elevation: 1,
//                         backgroundColor: Colors.red,
//                         side: BorderSide(color: Colors.white, width: 1),
//                       ),
//                       onPressed: () {},

//                       //chi;d of elevated
//                       child: Text(
//                         "SUBMIT ORDER",
//                         style: Theme.of(context).textTheme.bodySmall,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key});

  Widget _buildCardContainer(BuildContext context, String text) {
    return Container(
      width: 440,
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xFF2A2C36),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text, style: Theme.of(context).textTheme.bodySmall),
          SizedBox(height: 2),
          Text("Card details here",
              style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }

  Widget _buildCardContainerWithImage(BuildContext context, String text) {
    return Container(
      width: 343,
      height: 64,
      decoration: BoxDecoration(
        color: Color(0xFF2A2C36),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 2),
          Text(
            "Card details here",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Additional Info",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Image.asset("assets/card.png", width: 50, height: 50),
            ],
          ),
        ],
      ),
    );
  }

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      backgroundColor: Color(0xFF1E1F28),
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: 570,
          width: double.infinity,
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Add New Card",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              _buildCardContainer(context, "Card 1"),
              SizedBox(height: 16),
              _buildCardContainer(context, "Card 2"),
              SizedBox(height: 16),
              _buildCardContainer(context, "Card 3"),
              SizedBox(height: 16),
              _buildCardContainerWithImage(context, "Card with Image"),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Checkout",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        foregroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Shipping address",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: 108,
                decoration: BoxDecoration(
                  color: Color(0xFF2A2C36),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Jane Doe",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Change",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "3 Newbridge Court\nChino Hills, CA 91709, United States",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Payment",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 25,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 1,
                        backgroundColor: Colors.red,
                        side: BorderSide(color: Colors.white, width: 1),
                      ),
                      onPressed: () {
                        _openBottomSheet(context);
                      },
                      child: Text(
                        "ADD",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Image.asset("assets/card.png"),
                  Text(
                    "**** **** **** 3947",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                "Delivery method",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/fedex.png"),
                  Image.asset("assets/usps.png"),
                  Image.asset("assets/dhl.png"),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order:",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "112\$",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery:",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "15\$",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Summary:",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "127\$",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Center(
                child: SizedBox(
                  width: 343,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 1,
                      backgroundColor: Colors.red,
                      side: BorderSide(color: Colors.white, width: 1),
                    ),
                    onPressed: () {},
                    child: Text(
                      "SUBMIT ORDER",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: CheckOut()));
}
