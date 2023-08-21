import 'package:e_commerce_app/screens/checkout.dart';
import 'package:flutter/material.dart';

// class OrderCard extends StatelessWidget {
//   final String imageAssetPath;
//   const OrderCard({required this.imageAssetPath, Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(imageAssetPath),

//           //2nd
//           Center(
//             child: Container(
//               width: 250,
//               height: 105,
//               decoration: const BoxDecoration(
//                 //to radius specific side of container
//                 borderRadius: BorderRadius.only(
//                     bottomRight: Radius.circular(12),
//                     topRight: Radius.circular(12)),
//                 color: Color(0xff2A2C36),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 6),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Pullover",
//                       style: Theme.of(context).textTheme.bodyMedium,
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Text(
//                       "Mango",
//                       style: Theme.of(context).textTheme.bodySmall,
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           "Color:",
//                           style: Theme.of(context).textTheme.bodySmall,
//                         ),
//                         Text(
//                           "Gray",
//                           style: Theme.of(context)
//                               .textTheme
//                               .bodySmall
//                               ?.copyWith(color: Colors.white),
//                         ),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Text(
//                           "Size:",
//                           style: Theme.of(context).textTheme.bodySmall,
//                         ),
//                         Text(
//                           "L",
//                           style: Theme.of(context)
//                               .textTheme
//                               .bodySmall
//                               ?.copyWith(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Text(
//                               "Units:",
//                               style: Theme.of(context).textTheme.bodySmall,
//                             ),
//                             Text(
//                               "1",
//                               style: Theme.of(context).textTheme.bodyMedium,
//                             ),
//                           ],
//                         ),
//                         //
//                         Row(
//                           children: [
//                             Text(
//                               "51\$",
//                               style: Theme.of(context).textTheme.bodyMedium,
//                             ),
//                           ],
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

//////////
///
class OrderCard extends StatelessWidget {
  final String imageAssetPath;
  const OrderCard({required this.imageAssetPath, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageAssetPath),

          //2nd
          Center(
            child: Container(
              width: screenWidth < 600 ? screenWidth - 135 : 200,
              height: 105,
              decoration: const BoxDecoration(
                //to radius specific side of container
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                color: Color(0xff2A2C36),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Pullover",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        )
                      ],
                    ),

                    // SizedBox(height: 5),
                    // Text(
                    //   "Mango",
                    //   style: Theme.of(context).textTheme.bodySmall,
                    // ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          "Color:",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text(
                          "Gray",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.white),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Size:",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text(
                          "L",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "-",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              "1",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              "+",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        //
                        Row(
                          children: [
                            Text(
                              "51\$",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/////////////////////////////
/////
///
class MyBag extends StatelessWidget {
  const MyBag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: const [
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
        foregroundColor: Colors.transparent,
        elevation: 0,
      ),
      //
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Bag",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 12,
                ),

                //Bag Order cards
                OrderCard(
                  imageAssetPath: "assets/orderdetails.png",
                ),
                const SizedBox(
                  height: 12,
                ),

                OrderCard(
                  imageAssetPath: "assets/orderdetails1.png",
                ),
                const SizedBox(
                  height: 12,
                ),
                OrderCard(
                  imageAssetPath: "assets/orderdetails2.png",
                ),
                const SizedBox(
                  height: 20,
                ),

                //Promo Code Text Field
                Center(
                  child: SizedBox(
                    // width: 343,
                    height: 36,
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Color(0xff2A2C36),
                          filled: true,
                          hintText: "Enter your promo code",
                          hintStyle: Theme.of(context).textTheme.bodySmall,
                          suffixIcon: Icon(Icons.arrow_forward),
                          border: OutlineInputBorder()),
                    ),
                  ),
                ),
                //
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total amount::",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      "124\$",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                //Button
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
                      onPressed: () {
                        // setState(() {});
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return CheckOut();
                            },
                          ),
                        );
                      },

                      //chi;d of elevated
                      child: Text(
                        "CHECK OUT",
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
