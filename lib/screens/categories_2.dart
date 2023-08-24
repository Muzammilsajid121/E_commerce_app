import 'package:e_commerce_app/screens/bottom_nav-bar.dart';
import 'package:e_commerce_app/screens/main_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../categories2_model.dart';
import 'catalog1.dart';

class Category2 extends StatefulWidget {
  const Category2({Key? key}) : super(key: key);

  @override
  State<Category2> createState() => _Category2State();
}

class _Category2State extends State<Category2> {
  // categary categoryname = categary();
  Category1? categry;

  @override
  void initState() {
    getCategory();
    super.initState();
  }

  Future<void> getCategory() async {
    http.Response response = await http.get(Uri.parse(
        "https://ecommerce.salmanbediya.com/products/category/getAll"));
    print(response.statusCode);
    print(response.body);
    setState(() {
      categry = categoryFromJson(response.body);
    });
  }

  int currentSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 10, 20),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 10, 20),
        elevation: 0,
        title: Text(
          'Categories',
          style: TextStyle(
            fontFamily: "Metropolis",
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: SizedBox(
                  width: 400,
                  height: 50,
                  //wrap elevated button with sizedBox widget
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {});
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Navigation();
                          },
                        ),
                      );
                    },
                    // style: ElevatedButton.styleFrom(shadowColor: Colors.green),
                    child: Text(
                      'VIEW ALL ITEMS',
                      style: TextStyle(
                          fontFamily: "Metropolis",
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 230, 5, 65),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0.0, top: 10),
              child: Text(
                'Choose category',
                style: TextStyle(
                    fontFamily: "Metropolis", fontSize: 18, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Container(
              height: 550,
              child: categry == null
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: categry!.categories!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          color: Color.fromARGB(255, 0, 10, 20),
                          child: ListTile(
                            title: Text(
                              "${categry!.categories![index].name}",
                              style: TextStyle(
                                  fontFamily: "Metropolis",
                                  fontSize: 16,
                                  color: Colors.grey),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CatalogOne(
                                    category1: categry!.categories![index]),
                              ));
                            },
                          ),
                        );
                      }),
            ),
          ],
        ),
      ),
    );
  }
}
