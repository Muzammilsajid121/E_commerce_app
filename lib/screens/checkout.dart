import 'package:e_commerce_app/screens/add_shopping_adress.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  //

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Checkout",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        centerTitle: true,
        foregroundColor: Colors.transparent,
        elevation: 0,
      ),
      //
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shipping address",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 8,
                ),

                //Payment Box
                Container(
                    width: double.infinity,
                    height: 108,
                    decoration: BoxDecoration(
                      color: Color(0xff2A2C36),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    //

                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Jane Doe",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Text(
                                "Change",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(color: Colors.red),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "3 Newbridge Court\nChino Hills, CA 91709, United States",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 16,
                ),

                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),

                    //Add Button
                    SizedBox(
                      width: 80,
                      height: 25,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 1,
                          backgroundColor: Color(0xffEF3651),
                          side: BorderSide(color: Colors.white, width: 1),
                        ),

                        //
                        //
                        //Bottom Sheet
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled:
                                true, // This allows the content to scroll within the sheet
                            builder: (BuildContext context) {
                              return Container(
                                height: 450,
                                width: double.infinity,
                                color: Color(0xff1E1F28),
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    //
                                    //
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Add New Card",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    //List Views
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xff2A2C36),
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      height: 60,
                                      width: double.infinity,
                                      child: ListTile(
                                        title: Text(
                                          "Name on card",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    //
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xff2A2C36),
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      height: 60,
                                      width: double.infinity,
                                      child: ListTile(
                                        title: Text(
                                          "Card Number",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                        subtitle: Text(
                                          "5546 8205 3693 3947",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                        trailing:
                                            Image.asset("assets/card.png"),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    //
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xff2A2C36),
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      height: 60,
                                      width: double.infinity,
                                      child: ListTile(
                                        title: Text(
                                          "Expire date",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                        subtitle: Text(
                                          "5/23",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    //
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xff2A2C36),
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      height: 60,
                                      width: double.infinity,
                                      child: ListTile(
                                          title: Text(
                                            "CVV",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          ),
                                          subtitle: Text(
                                            "567",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                          trailing: const Icon(
                                            Icons.question_mark_rounded,
                                            color: Colors.grey,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    SizedBox(
                                      width: 343,
                                      height: 45,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red,
                                          side: BorderSide(
                                              color: Colors.white, width: 2),
                                        ),
                                        onPressed: () {},

                                        //chi;d of elevated
                                        child: Text(
                                          "ADD CARD",
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
                        },
//Bottom Sheet code ends
                        //chi;d of elevated
                        child: Text(
                          "ADD",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                //
                Row(
                  children: [
                    Image.asset("assets/card.png"),
                    Text(
                      "**** **** **** 3947",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                //
                Text(
                  "Delivery method",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 8,
                ),
                //
                //Cards Row
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/fedex.png"),
                      Image.asset("assets/usps.png"),
                      Image.asset("assets/dhl.png"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                //Texts
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Order:",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      "112\$",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery:",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      "15\$",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Summary:",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      "127\$",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                //Button
                Center(
                  child: SizedBox(
                    width: 343,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 1,
                        backgroundColor: Color(0xffEF3651),
                        side: BorderSide(color: Colors.white, width: 2),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return Add_Shopping_Address();
                            },
                          ),
                        );
                      },

                      //chi;d of elevated
                      child: Text(
                        "SUBMIT ORDER",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
