import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:http/http.dart' as http;

import '../modals/allproducts_model.dart';
import '../modals/main_page_model.dart';
import '../rating_modal_bottomsheet.dart';

class Product_cat extends StatefulWidget {
  final Product product1;
  const Product_cat({super.key, required this.product1});

  @override
  State<Product_cat> createState() => _ProductState();
}

class _ProductState extends State<Product_cat> {
  Welcome2? welcome2;

  @override
  void initState() {
    getProductall();
    super.initState();
  }

  Future<void> getProductall() async {
    http.Response response = await http
        .get(Uri.parse("https://ecommerce.salmanbediya.com/products/getAll"));
    print(response.statusCode);
    print(response.body);
    setState(() {
      welcome2 = welcome2FromJson(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    //
    //Size Bottom sheet code Starts
    void _showSizeModalBottomSheet() {
      showModalBottomSheet(
        context: context,
        backgroundColor: Color(0xff1E1F28),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        builder: (BuildContext context) {
          return Container(
            height: 370,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    "Select Size",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 58, 58, 63),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white)),
                      alignment: Alignment.center,
                      child: Text(
                        "XS",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 58, 58, 63),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white)),
                      alignment: Alignment.center,
                      child: Text(
                        "S",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 58, 58, 63),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white)),
                      alignment: Alignment.center,
                      child: Text(
                        "M",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(right: 125.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 58, 58, 63),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.white)),
                        alignment: Alignment.center,
                        child: Text(
                          "L",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      //
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 58, 58, 63),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.white)),
                        alignment: Alignment.center,
                        child: Text(
                          "XL",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                //
                //Row
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Size info",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_right,
                          color: Color(0xffABB4BD),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                //Button
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: SizedBox(
                    width: 430,
                    height: 50,
                    //wrap elevated button with sizedBox widget
                    child: ElevatedButton(
                      onPressed: () {
                        // // setState(() {
                        // //   email = emailcontroller.text;
                        // // });
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (BuildContext context) {
                        //       return Card();
                        //     },
                        //   ),
                        // );
                      },
                      // style: ElevatedButton.styleFrom(shadowColor: Colors.green),
                      child: Text(
                        'SAVE',
                        style: TextStyle(
                            fontFamily: "Metropolis",
                            fontSize: 15,
                            color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffEF3651),
                        side: BorderSide(color: Colors.white, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }
    //Bottom sheet code ends

    //////////////////////////////////
    ///
    //Color Bottom sheet code Starts
    void _showColorModalBottomSheet() {
      showModalBottomSheet(
        context: context,
        backgroundColor: Color(0xff1E1F28),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        builder: (BuildContext context) {
          return Container(
            height: 370,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    "Select Color",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 58, 58, 63),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white)),
                      alignment: Alignment.center,
                      child: Text(
                        "Black",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 58, 58, 63),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white)),
                      alignment: Alignment.center,
                      child: Text(
                        "Red",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 58, 58, 63),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white)),
                      alignment: Alignment.center,
                      child: Text(
                        "Green",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(right: 125.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 58, 58, 63),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.white)),
                        alignment: Alignment.center,
                        child: Text(
                          "White",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      //
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 58, 58, 63),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.white)),
                        alignment: Alignment.center,
                        child: Text(
                          "Blue",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                //
                //Row
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Color info",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_right,
                          color: Color(0xffABB4BD),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                //Button
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: SizedBox(
                    width: 430,
                    height: 50,
                    //wrap elevated button with sizedBox widget
                    child: ElevatedButton(
                      onPressed: () {
                        // setState(() {
                        //   email = emailcontroller.text;
                        // });
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (BuildContext context) {
                        //       return Home();
                        //     },
                        //   ),
                        // );
                      },
                      child: Text(
                        'SAVE',
                        style: TextStyle(
                            fontFamily: "Metropolis",
                            fontSize: 15,
                            color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffEF3651),
                        side: BorderSide(color: Colors.white, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }
    //Bottom sheet code ends
    ///

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 10, 20),
        elevation: 0,
        title: SizedBox(
          width: 100,
          child: Padding(
            padding: const EdgeInsets.only(left: 0.0, top: 0),
            child: Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              "${widget.product1.name}",
              style: TextStyle(
                  fontFamily: "Metropolis", fontSize: 14, color: Colors.grey),
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Icon(Icons.share),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 0, 10, 20),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "${widget.product1.image}",
                        ))),
              ),
              //ROW
              //bottom body Part
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 58, 58, 63),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 35,
                      width: 135,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Size",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            IconButton(
                                onPressed: () {
                                  _showSizeModalBottomSheet();
                                },
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Color(0xffABB4BD),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  //2nd dropdown
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 58, 58, 63),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 35,
                    width: 135,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Color",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          IconButton(
                              onPressed: () {
                                _showColorModalBottomSheet();
                              },
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Color(0xffABB4BD),
                              ))
                        ],
                      ),
                    ),
                  ),
                  //Add to favourite
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 63, 63, 66),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                        hoverColor: Colors.red,
                        focusColor: Colors.purple,
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Color(0xffABB4BD),
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              //Text Portion
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${widget.product1.name}",
                    style: TextStyle(
                      fontFamily: "Metropolis",
                      fontSize: 14,
                      //yaha p msla h hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Text(
                "\$ ${widget.product1.price}",
                style: TextStyle(
                  fontFamily: "Metropolis",
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              //
              Row(
                children: [
                  RatingBar.builder(
                      initialRating: 2,
                      minRating: 1,
                      itemSize: 26,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemPadding: EdgeInsets.symmetric(horizontal: 0),
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
                  Text(
                    "(${widget.product1.rating})",
                    style: TextStyle(
                        fontFamily: "Metropolis",
                        fontSize: 14,
                        color: Colors.red),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //
              SizedBox(
                width: 330,
                child: Text(
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  "${widget.product1.description}",
                  style: TextStyle(
                      fontFamily: "Metropolis",
                      fontSize: 12,
                      color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 12,
              ),

              //Button
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: SizedBox(
                    width: 430,
                    height: 50,
                    //wrap elevated button with sizedBox widget
                    child: ElevatedButton(
                      onPressed: () {
                        // setState(() {
                        //   email = emailcontroller.text;
                        // });
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (BuildContext context) {
                        //       return Home();
                        //     },
                        //   ),
                        // );
                      },
                      // style: ElevatedButton.styleFrom(shadowColor: Colors.green),
                      child: Text(
                        'ADD TO CART',
                        style: TextStyle(
                            fontFamily: "Metropolis",
                            fontSize: 15,
                            color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffEF3651),
                        side: BorderSide(color: Colors.white, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Divider(
                color: Colors.grey,
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shipping info',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Metropolis",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Support',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Metropolis",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'You can also like this',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Metropolis",
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 290,
                // width: 1000,
                child: welcome2 == null
                    ? Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: welcome2!.products!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Rating(
                                    product3: welcome2!.products![index]),
                              ));
                            },
                            child: Column(
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
                                          "${welcome2!.products![index].image}",
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
                                      "${welcome2!.products![index].description}",
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
                                      "${welcome2!.products![index].name}",
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
                                    "${welcome2!.products![index].price}",
                                    style: TextStyle(
                                        fontFamily: "Metropolis",
                                        fontSize: 14,
                                        color: Colors.red),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
