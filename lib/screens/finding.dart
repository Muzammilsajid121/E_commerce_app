import 'package:flutter/material.dart';
import 'package:e_commerce_app/screens/visual_search.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'main_page.dart';

// class FindindScreen extends StatefulWidget {
//   FindindScreen({super.key});

//   @override
//   State<FindindScreen> createState() => _FindindScreenState();
// }

// class _FindindScreenState extends State<FindindScreen> {
//   @override

//   //Functionality For Image Picker

//   File? _image;

//   Future getImage(ImageSource) async {
//     final image = await ImagePicker().pickImage(source: ImageSource);

//     if (image == null) return;
//     final imageTemporary = File(image.path);

//     //
//     setState(() {
//       this._image = imageTemporary;
//     });
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff1E1F28),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _image != null
//                 ? Image.file(
//                     _image!,
//                     width: 120,
//                     height: 100,
//                   )
//                 : Image.asset(
//                     "assets/finding.png",
//                     width: 230,
//                     height: 230,
//                   ),

//             //
//             SizedBox(
//               height: 15,
//             ),

//             //Icon
//             const Icon(
//               Icons.search,
//               size: 50,
//               color: Colors.red,
//             ),

//             SizedBox(
//               height: 10,
//             ),
//             //
//             Text(
//               "Finding Similar \n       results ...",
//               style: Theme.of(context).textTheme.titleMedium,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// FindingScreen

// ...

class FindingScreen extends StatefulWidget {
  final File? image;

  FindingScreen({required this.image});

  @override
  State<FindingScreen> createState() => _FindingScreenState();
}

class _FindingScreenState extends State<FindingScreen> {
//To automatically switch to Main Screen After 2 seconds
  void SwitchToMainPage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MainPage()));
  }

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), SwitchToMainPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1F28),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.image != null
                ? Image.file(
                    widget.image!,
                    width: 250,
                    height: 250,
                  )
                : Image.asset(
                    "assets/finding.png",
                    width: 250,
                    height: 250,
                  ),

            // ...
            SizedBox(
              height: 15,
            ),

            //Icon
            const Icon(
              Icons.search,
              size: 50,
              color: Colors.red,
            ),

            SizedBox(
              height: 10,
            ),
            //
            Text(
              "Finding Similar \n       results ...",
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
      ),
    );
  }
}
