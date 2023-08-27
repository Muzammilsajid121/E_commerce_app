import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class FavouriteCard extends StatelessWidget {
  final String imageAssetPath;
  const FavouriteCard({required this.imageAssetPath, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageAssetPath),

          //2nd
          Center(
            child: Container(
              width: screenWidth < 600 ? screenWidth - 140 : 200,
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
                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
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

//body
//Main Classs

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1E1F28),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff1E1F28),
          // foregroundColor: Colors.white,
          title: Text(
            "Favourities",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Favourites",
                    style: Theme.of(context).textTheme.titleLarge),

                const SizedBox(
                  height: 20,
                ),

                //Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.swap_vert,
                      color: Colors.white,
                    ),
                    Text(
                      "Price: lowest to high",
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                Expanded(
                  child: ListView(
                    children: [
                      //Catalog Cards

                      FavouriteCard(imageAssetPath: "assets/orderdetails2.png"),
                      const SizedBox(
                        height: 20,
                      ),
                      FavouriteCard(imageAssetPath: "assets/orderdetails3.png"),
                      const SizedBox(
                        height: 20,
                      ),
                      FavouriteCard(imageAssetPath: "assets/orderdetails4.png"),
                      const SizedBox(
                        height: 20,
                      ),
                      FavouriteCard(imageAssetPath: "assets/orderdetails5.png"),
                      const SizedBox(
                        height: 20,
                      ),
                      FavouriteCard(imageAssetPath: "assets/orderdetails1.png"),
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
