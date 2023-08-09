import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:e_commerce_app/screens/finding.dart';
import 'dart:io';

class VisualSearch extends StatefulWidget {
  const VisualSearch({super.key});

  @override
  State<VisualSearch> createState() => _VisualSearchState();
}

class _VisualSearchState extends State<VisualSearch> {
  // File? _image;

  // Future getImage(ImageSource) async {
  //   final image = await ImagePicker().pickImage(source: ImageSource);

  //   if (image == null) return;
  //   final imageTemporary = File(image.path);

  //   //
  //   setState(() {
  //     this._image = imageTemporary;
  //   });
  // }

  @override
  // ...

  Future<File?> getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return null;
    return File(image.path);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            "assets/visual.png",
          ),
        )),

        //
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //Text
          Padding(
            padding: EdgeInsets.fromLTRB(1, 200, 130, 1),
            child: Text(
              "Search for an outfit by \ntaking a photo or uploading \nan image",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(
            height: 14,
          ),

          //Button 1
          SizedBox(
            height: 48,
            width: 440,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                side: BorderSide(color: Colors.white, width: 2),
              ),
              onPressed: () async {
                final image = await getImage(ImageSource.camera);
                if (image != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FindingScreen(image: image),
                    ),
                  );
                }
              },
              child: Text(
                "Take a Photo",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          //
          SizedBox(
            height: 14,
          ),

          // //Button 2
          // SizedBox(
          //   height: 48,
          //   width: 440,
          //   child: ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //         backgroundColor: Colors.transparent,
          //         side: BorderSide(color: Colors.white, width: 2)),
          //     onPressed: () {
          //       Navigator.of(context).push(
          //           MaterialPageRoute(builder: (context) => FindindScreen()));
          //       getImage(ImageSource.gallery);
          //     },
          //     child: Text(
          //       "Upload an Image",
          //       style: Theme.of(context).textTheme.bodySmall,
          //     ),
          //   ),
          // ),
          ///////////////////////////////
          ///
          // VisualSearch Screen

// ...

// Button 2
          SizedBox(
            height: 48,
            width: 440,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                side: BorderSide(color: Colors.white, width: 2),
              ),
              onPressed: () async {
                final image = await getImage(ImageSource.gallery);
                if (image != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FindingScreen(image: image),
                    ),
                  );
                }
              },
              child: Text(
                "Upload an Image",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
