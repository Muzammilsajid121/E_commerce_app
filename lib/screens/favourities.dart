// import 'package:flutter/material.dart';

// class Favourite extends StatelessWidget {
//   const Favourite({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff2A2C36),
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         actions: [
//           Icon(
//             Icons.search,
//             color: Colors.white,
//           )
//         ],
//       ),
//       //
//       body: Container(
//         child: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Favourities",
//                 style: Theme.of(context).textTheme.titleLarge,
//               ),

//               //TAGS
//               //
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   const Icon(
//                     Icons.swap_vert,
//                     color: Colors.white,
//                   ),
//                   Text(
//                     "Price: lowest to high",
//                     style: Theme.of(context).textTheme.bodySmall,
//                   )
//                 ],
//               ),
//               //
//               //Container Card
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

///////////////////////////////////////////////////////
///
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class FavouriteCard extends StatelessWidget {
  final String imageAssetPath;
  const FavouriteCard({required this.imageAssetPath, Key? key})
      : super(key: key);

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
                    "Lime",
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
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Text(
                        "Color: ",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        "Blue",
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
                            "32",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Text(
                            "\$",
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

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1E1F28),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
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

                // Tabs
                //Tabs

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

                Expanded(
                  child: ListView(
                    children: [
                      //Catalog Cards

                      FavouriteCard(imageAssetPath: "assets/orderdetails2.png"),
                      FavouriteCard(imageAssetPath: "assets/orderdetails3.png"),
                      FavouriteCard(imageAssetPath: "assets/orderdetails4.png"),
                      FavouriteCard(imageAssetPath: "assets/orderdetails5.png"),
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
