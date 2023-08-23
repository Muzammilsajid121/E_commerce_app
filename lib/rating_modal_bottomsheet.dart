import 'package:e_commerce_app/screens/bottom_nav-bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'modals/Reviews_modal.dart';
import 'modals/allproducts_model.dart';

class Rating extends StatefulWidget {
  final Product2 product3;
  const Rating({super.key, required this.product3});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  TextEditingController UserIDController = TextEditingController();
  TextEditingController ProductIDcontroller = TextEditingController();
  TextEditingController Ratingcontroller = TextEditingController();
  TextEditingController Reviewcontroller = TextEditingController();

  void login(
      String userid, String productid, String ratingp, String reviewp) async {
    try {
      http.Response response = await post(
          Uri.parse('https://ecommerce.salmanbediya.com/products/review/add'),
          body: {
            'user': userid,
            'product': productid,
            'rating': ratingp,
            'review': reviewp
          });
      if (response.statusCode == 201) {
        Fluttertoast.showToast(
            msg: "Review added successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 4,
            backgroundColor: Colors.green,
            textColor: Colors.black,
            fontSize: 16.0);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return Navigation();
            },
          ),
        );
      } else {
        Text(
          'Failed',
          style: TextStyle(color: Colors.white),
        );
        print("Failed");
        Fluttertoast.showToast(
            msg: "Failed",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 10,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  String? id;
  RatingsReviews? review;

  @override
  void initState() {
    getCategories(widget.product3.id!);
    super.initState();
  }

  Future<void> getCategories(String id) async {
    http.Response response = await http.get(Uri.parse(
        'https://ecommerce.salmanbediya.com/products/review/get/$id'));
    print(response.statusCode);
    print(response.body);
    setState(() {
      review = welcomerFromJson(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rating&Reviews",
                    style: TextStyle(
                      fontFamily: "Metropolis",
                      fontWeight: FontWeight.bold,
                      fontSize: 34,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "${widget.product3.rating} Rating",
                    style: TextStyle(
                      fontFamily: "Metropolis",
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Text(
                    "${widget.product3.reviews} Reviews",
                    style: TextStyle(
                      fontFamily: "Metropolis",
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  // Rating Container
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 250,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff2A2C36),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "${widget.product3.name} ",
                                style: TextStyle(
                                  fontFamily: "Metropolis",
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
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
                                    width: 100,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 6.0, top: 4),
                                      child: Text(
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        "${widget.product3.dateCreated}",
                                        style: TextStyle(
                                            fontFamily: "Metropolis",
                                            fontSize: 16,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              // Review
                              SizedBox(
                                width: 250,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 6.0, top: 4),
                                  child: Text(
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    "This Product is Very Good ${widget.product3.description}",
                                    style: TextStyle(
                                        fontFamily: "Metropolis",
                                        fontSize: 12,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Helpful",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Icon(
                                    Icons.thumb_up_sharp,
                                    color: Color(0xffABB4BD),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

//Review Button
                  Padding(
                    padding: const EdgeInsets.only(left: 160.0),
                    child: Center(
                      child: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Container(
                            height: 36,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Color(0xffEF3651),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  Text(
                                    "Write a review",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        //
                        //Modal Bottom Sheet on Button
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Color.fromARGB(255, 0, 10, 20),
                              elevation: 0,
                              isDismissible: true,
                              enableDrag: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              )),
                              context: context,
                              builder: (context) {
                                return Container(
                                  height: 2000,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 5,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 177, 176, 176),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "What is you rate?",
                                        style: TextStyle(
                                            fontSize: 11, color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      RatingBar.builder(
                                          initialRating: 1,
                                          minRating: 1,
                                          itemSize: 30,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 0),
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
                                        height: 8,
                                      ),
                                      Text(
                                        "Please share your opinion\n        about the product",
                                        style: TextStyle(
                                            fontSize: 11, color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 18.0),
                                        child: SizedBox(
                                          width: 400,
                                          height: 50,
                                          child: TextField(
                                            controller: UserIDController,
                                            style:
                                                TextStyle(color: Colors.white),
                                            decoration: InputDecoration(
                                              hintText: "Enter User Id!",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: "Metropolis",
                                                fontSize: 11,
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 18.0),
                                        child: SizedBox(
                                          width: 400,
                                          height: 50,
                                          child: TextField(
                                            controller: ProductIDcontroller,
                                            style:
                                                TextStyle(color: Colors.white),
                                            decoration: InputDecoration(
                                              hintText: "Enter Product ID!",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: "Metropolis",
                                                fontSize: 11,
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 18.0),
                                        child: SizedBox(
                                          width: 400,
                                          height: 50,
                                          child: TextField(
                                            controller: Ratingcontroller,
                                            style:
                                                TextStyle(color: Colors.white),
                                            decoration: InputDecoration(
                                              hintText: "Enter Rating!",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: "Metropolis",
                                                fontSize: 11,
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 18.0),
                                        child: SizedBox(
                                          width: 400,
                                          height: 50,
                                          child: TextField(
                                            controller: Reviewcontroller,
                                            style:
                                                TextStyle(color: Colors.white),
                                            decoration: InputDecoration(
                                              hintText: "Enter your Review!",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: "Metropolis",
                                                fontSize: 11,
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 20.0),
                                        child: SizedBox(
                                          width: 430,
                                          height: 50,
                                          //wrap elevated button with sizedBox widget
                                          child: ElevatedButton(
                                            onPressed: () {
                                              login(
                                                  UserIDController.text
                                                      .toString(),
                                                  ProductIDcontroller.text
                                                      .toString(),
                                                  Ratingcontroller.text
                                                      .toString(),
                                                  Reviewcontroller.text
                                                      .toString());
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(
                                              //     builder: (BuildContext context) {
                                              //       return Bottom_sheet();
                                              //     },
                                              //   ),
                                              // );
                                            },
                                            // style: ElevatedButton.styleFrom(shadowColor: Colors.green),
                                            child: Text(
                                              'SEND REVIEW',
                                              style: TextStyle(
                                                  fontFamily: "Metropolis",
                                                  fontSize: 15),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color.fromARGB(
                                                  255, 230, 5, 65),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
