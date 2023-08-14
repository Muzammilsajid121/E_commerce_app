import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    Key? key,
    required this.orderNo,
    required this.orderDate,
    required this.trackingNumber,
    required this.quantity,
    required this.totalAmount,
    required this.deliveryStatus,
  }) : super(key: key);

  final String orderNo;
  final String orderDate;
  final String trackingNumber;
  final String quantity;
  final String totalAmount;
  final String deliveryStatus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 130,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xff2A2C36),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Order No: $orderNo",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      orderDate,
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    Text(
                      "Tracking number: ",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      trackingNumber,
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Quantity: $quantity",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Row(
                      children: [
                        Text(
                          "Total Amount:",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text(
                          totalAmount,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          side: BorderSide(color: Colors.white, width: 1)),
                      onPressed: () {},
                      child: Text(
                        "Details",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text(
                      deliveryStatus,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.green),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: const [
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
        foregroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 300.0),
                child: Text(
                  "My orders",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),

              // First Order Card
              OrderCard(
                orderNo: "1947034",
                orderDate: "05-12-2019",
                trackingNumber: "IW3475453455",
                quantity: "3",
                totalAmount: "1125\$",
                deliveryStatus: "Delivered",
              ),

              // Second Order Card
              OrderCard(
                orderNo: "1947035",
                orderDate: "06-12-2019",
                trackingNumber: "IW3475453456",
                quantity: "2",
                totalAmount: "800\$",
                deliveryStatus: "In Transit",
              ),

              // Thire Order Card
              OrderCard(
                orderNo: "2398492",
                orderDate: "06-12-2021",
                trackingNumber: "IW3475453456",
                quantity: "3",
                totalAmount: "400\$",
                deliveryStatus: "In Transit",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
