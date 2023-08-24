import 'package:e_commerce_app/screens/bottom_nav-bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

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
              // SizedBox(
              //   height: 20,
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  "Rating&Reviews",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
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
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    height: 330,
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
              ),
              SizedBox(
                height: 20,
              ),

//Review Button
              Center(
                child: InkWell(
                  child: Container(
                    height: 36,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Color(0xffEF3651),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                  //
                  //Modal Bottom Sheet on Button
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 800,
                          width: double.infinity,
                          color: Color(0xff1E1F28),
                          //
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //
                                Text(
                                  "What is you rate?",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                //Stars

                                //
                                Text(
                                  "Please share your opinion\n       about the product ",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),

                                //
                                //Container
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xff2A2C36),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      height: 100,
                                      width: double.infinity,
                                    ),
                                  ),
                                ),

                                //Botttom sheet Button
                                //Button
                                SizedBox(
                                  width: 333,
                                  height: 48,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      side: BorderSide(
                                          color: Colors.white, width: 1),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) {
                                            return Navigation();
                                          },
                                        ),
                                      );
                                    },

                                    //chi;d of elevated
                                    child: Text(
                                      "SEND REVIEW",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ),
                                ),
                              ]),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/////////////////////
///

class StarsRating extends StatefulWidget {
  const StarsRating({super.key});

  @override
  State<StarsRating> createState() => _StarsRatingState();
}

class _StarsRatingState extends State<StarsRating> {
  double value = 3.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RatingStars(
          value: value,
          onValueChanged: (v) {
            //
            setState(() {
              value = v;
            });
          },
          starBuilder: (index, color) => Icon(
            Icons.star,
            color: color,
          ),
          starCount: 5,
          starSize: 20,
          valueLabelColor: const Color(0xff9b9b9b),
          valueLabelTextStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 12.0),
          valueLabelRadius: 10,
          maxValue: 5,
          starSpacing: 2,
          maxValueVisibility: true,
          valueLabelVisibility: true,
          animationDuration: Duration(milliseconds: 1000),
          valueLabelPadding:
              const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
          valueLabelMargin: const EdgeInsets.only(right: 8),
          starOffColor: const Color(0xffe7e8ea),
          starColor: Colors.yellow,
        ),
      ),
    );
  }
}
