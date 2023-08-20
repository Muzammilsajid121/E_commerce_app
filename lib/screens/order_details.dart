import 'package:e_commerce_app/screens/setting.dart';
import 'package:flutter/material.dart';

//order card
class OrderCard extends StatelessWidget {
  final String imageAssetPath;
  const OrderCard({required this.imageAssetPath, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Image.asset(imageAssetPath),

          //2nd
          Container(
            width: 350,
            decoration: const BoxDecoration(
              //to radius specific side of container
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  topRight: Radius.circular(12)),
              color: Color(0xff2A2C36),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 265),
                  child: Text(
                    "Pullover",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 281),
                  child: Text(
                    "Mango",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
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
                      SizedBox(
                        width: 20,
                      ),
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
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Units:",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            "1",
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

//body
//Main Classs

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Order details",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Center(
          child: Column(
            children: [
              //Wrap OrderCard with Inkwell
              //Modal Bottom Sheet
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      //Bottom Sheet Designing
                      backgroundColor: Color(0xff1E1F28),
                      //
                      context: context,
                      builder: ((context) => Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Order Information",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Shipping Adress:  ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(color: Colors.grey),
                                    ),
                                    Text(
                                      "3 Newbridge Court,Chino Hills,\nCA 91709, United States",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),

                                //2nd Row
                                Row(
                                  children: [
                                    Text(
                                      "Payment Method:   ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(color: Colors.grey),
                                    ),
                                    Text(
                                      "**** **** **** 3947",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                //3rd row
                                Row(
                                  children: [
                                    Text(
                                      "Delivery method:   ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(color: Colors.grey),
                                    ),
                                    Text(
                                      "FedEx, 3 days, 15\$",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                //4th Row
                                Row(
                                  children: [
                                    Text(
                                      "Discount:   ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(color: Colors.grey),
                                    ),
                                    Text(
                                      "10%, Personal promo code",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                //5th Row
                                Row(
                                  children: [
                                    Text(
                                      "Total Amount:   ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(color: Colors.grey),
                                    ),
                                    Text(
                                      "1335",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                //6th Row
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 150,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              side: BorderSide(
                                                  color: Colors.white),
                                              backgroundColor:
                                                  Colors.transparent),
                                          onPressed: () {},
                                          child: Text(
                                            "Reorder",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                    ),
                                    //
                                    //2nd button
                                    SizedBox(
                                      width: 150,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              side: BorderSide(
                                                  color: Colors.white),
                                              backgroundColor: Colors.red),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) {
                                                  return Settings();
                                                },
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Leave Feedback",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )));
                },
                child: OrderCard(
                  imageAssetPath: "assets/orderdetails.png",
                ),
              ),
              OrderCard(
                imageAssetPath: "assets/orderdetails1.png",
              ),
              OrderCard(
                imageAssetPath: "assets/orderdetails2.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
