import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:e_commerce_app/screens/finding.dart';

class VisualSearch extends StatefulWidget {
  const VisualSearch({super.key});

  @override
  State<VisualSearch> createState() => _VisualSearchState();
}

class _VisualSearchState extends State<VisualSearch> {
  File? _image;

  Future getImage(ImageSource) async {
    final image = await ImagePicker().pickImage(source: ImageSource);

    if (image == null) return;
    final imageTemporary = File(image.path);

    //
    setState(() {
      this._image = imageTemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/visual.png",
          ),
        )),
        width: double.infinity,
        //
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //

          //
          //
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
              ),
              onPressed: () {
                getImage(ImageSource.camera);
              },
              child: Text(
                "TAKE A PHOTO",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),

          //
          SizedBox(
            height: 14,
          ),

          //Button 2
          SizedBox(
            height: 48,
            width: 440,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  side: BorderSide(color: Colors.white, width: 2)),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FindindScreen()));
                getImage(ImageSource.gallery);
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
