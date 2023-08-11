import 'package:flutter/material.dart';

import 'main_page2.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/main.png",
                      ))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Stack(
                  // alignment: AlignmentDirectional.bottomStart,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 300),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Fashion\nsale",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 48),
                          ),
                          // Text(
                          //   "sale",
                          //   style: Theme.of(context)
                          //       .textTheme
                          //       .titleLarge
                          //       ?.copyWith(
                          //           fontWeight: FontWeight.bold, fontSize: 48),
                          // ),
                          //
                          //Button
                          SizedBox(
                            width: 150,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffEF3651)),
                              child: Text(
                                "Check",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              ////To switch to Main_page2 Screen

                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return MainPage2();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("New", style: Theme.of(context).textTheme.titleLarge),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("You’ve never seen it before!",
                          style: Theme.of(context).textTheme.bodySmall),
                      Text("View all",
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 184,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    //
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "-20% ",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(fontSize: 12),
                            ),
                            height: 20,
                            width: 32,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          Image.asset(
                            "assets/model.png",
                            // width: 150,
                            // height: 150,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
