import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:http/http.dart' as http;
import 'package:e_commerce_app/main_page_model.dart';
import 'package:e_commerce_app/main_page2_model.dart';

class MainPage2 extends StatefulWidget {
  const MainPage2({super.key});

  @override
  State<MainPage2> createState() => _MainPage2State();
}

class _MainPage2State extends State<MainPage2> {
  Welcome1? welcome1; // Sale Model
  Welcome? welcome; // New Model

  @override
  void initState() {
    getProduct();
    getSale();
    super.initState();
  }

  Future<void> getSale() async {
    http.Response response = await http.get(Uri.parse(
        "https://ecommerce.salmanbediya.com/products/tag/sale/getAll"));
    print(response.statusCode);
    print(response.body);
    setState(() {
      welcome1 = welcome1FromJson(response.body);
    });
  }

  Future<void> getProduct() async {
    http.Response response = await http.get(Uri.parse(
        "https://ecommerce.salmanbediya.com/products/tag/new/getAll"));
    print(response.statusCode);
    print(response.body);
    setState(() {
      welcome = welcomeFromJson(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    int currentSelectedIndex = 0;
    return Scaffold(
        // bottomNavigationBar: BottomNavigationBar(
        //   backgroundColor: Color.fromARGB(255, 0, 10, 20),
        //   currentIndex: currentSelectedIndex,
        //   unselectedItemColor: Colors.white,
        //   fixedColor: Colors.white,
        //   type: BottomNavigationBarType.fixed,
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Image.asset('assets/images/hm.png'),
        //       label: "Home",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Image.asset('assets/images/sp.png'),
        //       label: "Shop",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Image.asset('assets/images/bg.png'),
        //       label: "Bag",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Image.asset('assets/images/ht.png'),
        //       label: "Favorites",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Image.asset('assets/images/ac.png'),
        //       label: "Profile",
        //     ),
        //   ],
        //   onTap: ((index) {
        //     setState(() {
        //       currentSelectedIndex = index;
        //     });
        //   }),
        // ),
        backgroundColor: Color.fromARGB(255, 0, 10, 20),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "assets/banner.png",
                        ))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Stack(
                    // alignment: AlignmentDirectional.bottomStart,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 160),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Street clothes",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 48,
                                      color: Colors.white),
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
                    Text(
                      "Sale",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Super summer sale",
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'Metropolis',
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'Metropolis',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 290,
                      // width: 1000,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: welcome1!.products!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 160,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    //  color: Colors.black,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Card(
                                    // color: Color.fromARGB(255, 0, 10, 20),
                                    child: Container(
                                      // width: 120,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.network(
                                          "${welcome1!.products![index].image}",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),

                                    // title:
                                    // ),
                                  ),
                                ),
                                RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    itemSize: 30,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 0),
                                    itemBuilder: (context, _) => SizedBox(
                                        width: 30,
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 20,
                                        )),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    }),
                                SizedBox(
                                  width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 6.0, top: 4),
                                    child: Text(
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      "${welcome1!.products![index].description}",
                                      style: TextStyle(
                                          fontFamily: "Metropolis",
                                          fontSize: 11,
                                          color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 6.0, top: 4),
                                    child: Text(
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      "${welcome1!.products![index].name}",
                                      style: TextStyle(
                                          fontFamily: "Metropolis",
                                          fontSize: 16,
                                          // fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 6.0, top: 4),
                                  child: Text(
                                    "${welcome1!.products![index].price}",
                                    style: TextStyle(
                                        fontFamily: "Metropolis",
                                        fontSize: 14,
                                        color: Colors.red),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "You’ve never seen it before!",
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'Metropolis',
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'Metropolis',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 290,
                      // width: 1000,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: welcome!.products!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 160,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    //  color: Colors.black,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Card(
                                    // color: Color.fromARGB(255, 0, 10, 20),
                                    child: Container(
                                      // width: 120,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.network(
                                          "${welcome!.products![index].image}",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),

                                    // title:
                                    // ),
                                  ),
                                ),
                                RatingBar.builder(
                                    initialRating: 2,
                                    minRating: 1,
                                    itemSize: 30,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 0),
                                    itemBuilder: (context, _) => SizedBox(
                                        width: 30,
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 20,
                                        )),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    }),
                                SizedBox(
                                  width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 6.0, top: 4),
                                    child: Text(
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      "${welcome!.products![index].description}",
                                      style: TextStyle(
                                          fontFamily: "Metropolis",
                                          fontSize: 11,
                                          color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 6.0, top: 4),
                                    child: Text(
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      "${welcome!.products![index].name}",
                                      style: TextStyle(
                                          fontFamily: "Metropolis",
                                          fontSize: 16,
                                          // fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 6.0, top: 4),
                                  child: Text(
                                    "${welcome!.products![index].price}",
                                    style: TextStyle(
                                        fontFamily: "Metropolis",
                                        fontSize: 14,
                                        color: Colors.red),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
