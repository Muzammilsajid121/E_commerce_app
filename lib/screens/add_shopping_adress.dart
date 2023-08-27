import 'package:e_commerce_app/screens/success.dart';
import 'package:flutter/material.dart';

class Add_Shopping_Address extends StatefulWidget {
  const Add_Shopping_Address({Key? key}) : super(key: key);

  @override
  State<Add_Shopping_Address> createState() => _Add_Shopping_AddressState();
}

class _Add_Shopping_AddressState extends State<Add_Shopping_Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 10, 20),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Adding Shipping Address',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Metropolis',
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 0, 10, 20),
        elevation: 0,
        // leading: Icon(
        //   Icons.arrow_back_ios,
        //   color: Colors.white,
        // ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                label: Text(
                  'Full name',
                  style: TextStyle(color: Colors.grey),
                ),
                hintText: "  Full name ",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Metropolis",
                  fontSize: 14,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                label: Text(
                  'Address',
                  style: TextStyle(color: Colors.grey),
                ),
                hintText: "  3 Newbridge Court ",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Metropolis",
                  fontSize: 14,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                label: Text(
                  'City',
                  style: TextStyle(color: Colors.grey),
                ),
                hintText: "  Chino Hills ",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Metropolis",
                  fontSize: 14,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                label: Text(
                  'State/Province/Region',
                  style: TextStyle(color: Colors.grey),
                ),
                hintText: "  California ",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Metropolis",
                  fontSize: 14,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                label: Text(
                  'Zip Code (Postal Code)',
                  style: TextStyle(color: Colors.grey),
                ),
                hintText: "  91709 ",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Metropolis",
                  fontSize: 14,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                label: Text(
                  'Country',
                  style: TextStyle(color: Colors.grey),
                ),
                hintText: "  United States ",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Metropolis",
                  fontSize: 14,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 46,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Center(
              child: SizedBox(
                width: 350,
                height: 50,
                //wrap elevated button with sizedBox widget
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Success();
                        },
                      ),
                    );
                  },
                  // style: ElevatedButton.styleFrom(shadowColor: Colors.green),
                  child: Text(
                    'SAVE ADDRESS',
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
        ]),
      ),
    );
  }
}
