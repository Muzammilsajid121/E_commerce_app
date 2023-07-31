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
              OrderCard(
                imageAssetPath: "assets/orderdetails.png",
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
