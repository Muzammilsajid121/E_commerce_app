import 'package:flutter/material.dart';
// import 'bottom_sheet.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  ///
  //////
  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Bottom_sheet(), // Use the Bottom_sheet class here
    );
  }
  /////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Settings",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Personal Information",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 10,
              ),

              //Text Field
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color(0xff2A2C36),
                  hintText: "Full Name",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              //
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color(0xff2A2C36),
                  hintText: "Date of birth",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),

              const SizedBox(
                height: 14,
              ),

              //Pasword change
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Password",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  InkWell(
                    onTap: () {
                      _showBottomSheet();
                    },
                    child: Text(
                      "Change",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color(0xff2A2C36),
                  hintText: " Password",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 14,
              ),

              //Notifications
              Text("Notifications",
                  style: Theme.of(context).textTheme.bodyLarge),

              const SizedBox(
                height: 10,
              ),

              //Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sales",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  //switch Button
                  Switch(
                    activeColor: Colors.green,
                    activeTrackColor: Color(0xffABB4BD),
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.grey[400],
                    value: true,
                    onChanged: (newValue) {
                      setState(() {
                        newValue = newValue;
                      });
                    },
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
                    "New arrivals",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  //switch Button
                  Switch(
                    activeColor: Colors.green,
                    activeTrackColor: Color(0xffABB4BD),
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.grey[400],
                    value: false,
                    onChanged: (newValue) {
                      setState(() {
                        newValue = newValue;
                      });
                    },
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
                    "Delivery Status Changes",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  //switch Button
                  Switch(
                    activeColor: Colors.green,
                    activeTrackColor: Color(0xffABB4BD),
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.grey[400],
                    value: false,
                    onChanged: (newValue) {
                      setState(() {
                        newValue = newValue;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

////////////////////
//////////////////////bottom sheet

class Bottom_sheet extends StatefulWidget {
  const Bottom_sheet({Key? key}) : super(key: key);

  @override
  State<Bottom_sheet> createState() => _Bottom_sheetState();
}

class _Bottom_sheetState extends State<Bottom_sheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            child: Text("Show Bottom Sheet"),
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Color.fromARGB(255, 0, 10, 20),
                  elevation: 0,
                  isDismissible: false,
                  enableDrag: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
                  context: context,
                  builder: (context) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 5,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 177, 176, 176),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Password Change",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              label: Text(
                                'Old Password',
                                style: TextStyle(color: Colors.grey),
                              ),
                              hintText: "  Old Password ",
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
                          padding: const EdgeInsets.only(left: 337.0),
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontFamily: "Metropolis"),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              label: Text(
                                'New Password',
                                style: TextStyle(color: Colors.grey),
                              ),
                              hintText: "  New Password ",
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
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              label: Text(
                                'Repeat New Password',
                                style: TextStyle(color: Colors.grey),
                              ),
                              hintText: "  Repeat New Password ",
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
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: SizedBox(
                            width: 430,
                            height: 50,
                            //wrap elevated button with sizedBox widget
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return Bottom_sheet();
                                    },
                                  ),
                                );
                              },
                              // style: ElevatedButton.styleFrom(shadowColor: Colors.green),
                              child: Text(
                                'SAVE PASSWORD',
                                style: TextStyle(
                                    fontFamily: "Metropolis", fontSize: 15),
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
                      ],
                    );
                  });
            }),
      ),
    );
  }
}
