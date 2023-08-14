import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rating&Reviews",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "4.3",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "23 ratings",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 22,
              ),
              Text(
                "8 reviews",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 22,
              ),
              // Rating Container
              Center(
                child: Container(
                  height: 250,
                  width: 400,
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
                          "Helene Moore",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Stars Rating",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            Text(
                              "June 5, 2019",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // Review
                        Text(
                          "This is a review. I love this cloth. I will wear it in party. super smexy cloths.The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7 and 130 pounds. I am a 34B chest.I love it.Wow. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it. Bye Bye tata ",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Helpful",
                              style: Theme.of(context).textTheme.bodySmall,
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
              SizedBox(
                height: 20,
              ),

//Review Button
              Padding(
                padding: const EdgeInsets.only(left: 300),
                child: Container(
                  height: 36,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xffEF3651),
                    borderRadius: BorderRadius.circular(20),
                  ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
