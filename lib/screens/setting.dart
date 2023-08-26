import 'package:e_commerce_app/screens/bottom_nav-bar.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  void _showBottomSheet() {
    showModalBottomSheet(
      backgroundColor: Color(0xff1E1F28),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      isScrollControlled: false, // This will make the sheet full height
      builder: (context) {
        return Container(
          width: double.infinity,
          height: 500,
          child: BottomSheetContent(),
        );
      },
    );
  }

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
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text(
                  "Settings",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
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
                height: 22,
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
                          .bodyText1
                          ?.copyWith(color: Colors.grey),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 12,
              ),

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
                    activeColor: Color(0xff55D85A),
                    activeTrackColor: Color.fromARGB(255, 3, 160, 8),
                    inactiveThumbColor: Color.fromARGB(255, 57, 61, 65),
                    inactiveTrackColor: Color.fromARGB(255, 94, 94, 95),
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
                    activeColor: Color(0xff55D85A),
                    activeTrackColor: Color.fromARGB(255, 3, 160, 8),
                    inactiveThumbColor: Color.fromARGB(255, 57, 61, 65),
                    inactiveTrackColor: Color.fromARGB(255, 94, 94, 95),
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
                    activeColor: Color(0xff55D85A),
                    activeTrackColor: Color.fromARGB(255, 3, 160, 8),
                    inactiveThumbColor: Color.fromARGB(255, 57, 61, 65),
                    inactiveTrackColor: Color.fromARGB(255, 94, 94, 95),
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

class BottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // height: 500,
      color: Color(0xff1E1F28),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              "Password Change",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 45,
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
              height: 8,
            ),
            Text(
              "Forgot Password?",
              style: TextStyle(
                  fontSize: 14, color: Colors.grey, fontFamily: "Metropolis"),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 45,
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
              height: 16,
            ),
            SizedBox(
              height: 45,
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
              height: 16,
            ),
            SizedBox(
              width: 320,
              height: 50,
              //wrap elevated button with sizedBox widget
              child: ElevatedButton(
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
                child: Text(
                  'SAVE PASSWORD',
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
          ],
        ),
      ),
    );
  }
}
