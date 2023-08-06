import 'package:flutter/material.dart';

class CatalogCard extends StatelessWidget {
  final String imageAssetPath;
  const CatalogCard({required this.imageAssetPath, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(imageAssetPath),

          //2nd
          Container(
            width: 340,
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

class CatalogOne extends StatelessWidget {
  const CatalogOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1E1F28),
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Women's Top",
                    style: Theme.of(context).textTheme.titleLarge),

                // Tabs
                //Tabs

                Expanded(
                  child: ListView(
                    children: [
                      //Catalog Cards

                      CatalogCard(imageAssetPath: "assets/orderdetails2.png"),
                      CatalogCard(imageAssetPath: "assets/orderdetails3.png"),
                      CatalogCard(imageAssetPath: "assets/orderdetails4.png"),
                      CatalogCard(imageAssetPath: "assets/orderdetails5.png"),
                      CatalogCard(imageAssetPath: "assets/orderdetails1.png"),
                    ],
                    scrollDirection: Axis.vertical,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
