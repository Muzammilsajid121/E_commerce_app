import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

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
                  padding: const EdgeInsets.only(right: 150.0),
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
                SizedBox(
                  height: 48,
                  width: 440,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      side: BorderSide(color: Colors.white, width: 2),
                    ),
                    onPressed: () {},

                    //chi;d of elevated
                    child: Text(
                      "ADD TO CART",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.white),
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
                  padding: const EdgeInsets.only(right: 150.0),
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
                SizedBox(
                  height: 48,
                  width: 440,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      side: BorderSide(color: Colors.white, width: 2),
                    ),
                    onPressed: () {},

                    //chi;d of elevated
                    child: Text(
                      "ADD TO CART",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.white),
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
      backgroundColor: Color(0xff1E1F28),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 510,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "assets/main.png",
                        ))),
              ),
              //ROW
              //bottom body Part
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    "H&M",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "\$19.99",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              //
              Text(
                "Short black dress",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 10,
              ),
              //
              Text(
                "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication.",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 12,
              ),

              //Button
              Center(
                child: SizedBox(
                  height: 48,
                  width: 440,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      side: BorderSide(color: Colors.white, width: 2),
                    ),
                    onPressed: () {},

                    //chi;d of elevated
                    child: Text(
                      "ADD TO CART",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
