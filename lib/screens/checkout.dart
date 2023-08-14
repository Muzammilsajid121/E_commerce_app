import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Checkout",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        centerTitle: true,
        foregroundColor: Colors.transparent,
        elevation: 0,
      ),
      //
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
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
                        // mainAxisAlignment: MainAxisAlignment.start,
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
                          backgroundColor: Colors.red,
                          side: BorderSide(color: Colors.white, width: 1),
                        ),
                        onPressed: () {},

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/fedex.png"),
                    Image.asset("assets/usps.png"),
                    Image.asset("assets/dhl.png"),
                  ],
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
                        backgroundColor: Colors.red,
                        side: BorderSide(color: Colors.white, width: 1),
                      ),
                      onPressed: () {},

                      //chi;d of elevated
                      child: Text(
                        "SUBMIT ORDER",
                        style: Theme.of(context).textTheme.bodySmall,
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
