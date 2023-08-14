import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      body: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/bags.png"),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Success!",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 12,
              ),
              //
              Text(
                "Your order will be delivered soon.\nThank you for choosing our app!",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 40,
              ),

              //Button
              SizedBox(
                width: 343,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    side: BorderSide(color: Colors.white, width: 1),
                  ),
                  onPressed: () {},

                  //chi;d of elevated
                  child: Text(
                    "CONTINUE SHOPPING",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}