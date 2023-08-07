import 'package:flutter/material.dart';

class MainPage2 extends StatelessWidget {
  const MainPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1E1F28),
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/banner.png",
                  fit: BoxFit.fitWidth,
                ),
                Text("Hello"),
              ],
            )
          ],
        )
        // Stack(
        //   // fit: StackFit.expand,
        //   children: [
        //     Container(
        //       height: 300,
        //       color: Colors.red,
        //     ),
        //     Image.asset(
        //       "assets/banner.png",
        //       fit: BoxFit.fitWidth,
        //     ),
        //     Text("Hello"),
        //   ],
        // ),
        // Container(
        //   height: 250,
        //   width: double.infinity,
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //         fit: BoxFit.cover,
        //         image: AssetImage(
        //           "assets/banner.png",
        //         )),
        //   ),
        //   child: Column(
        //     // mainAxisAlignment: MainAxisAlignment.start,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.fromLTRB(0, 190, 220, 0),
        //         child: Text(
        //           "Street clothes",
        //           style: Theme.of(context).textTheme.titleLarge?.copyWith(
        //                 fontWeight: FontWeight.bold,
        //                 fontSize: 32,
        //               ),
        //         ),
        //       ),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Text(
        //             "Sale",
        //             style: Theme.of(context).textTheme.titleLarge,
        //           ),
        //           Text(
        //             "View all",
        //             style: Theme.of(context).textTheme.bodyMedium,
        //           )
        //         ],
        //       )
        //     ],
        //   ),
        // ),
        );
  }
}
