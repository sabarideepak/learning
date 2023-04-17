import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:learning/SCREEN/config_colour.dart';

class BottomImageUpload extends StatefulWidget {
  const BottomImageUpload({Key? key}) : super(key: key);

  @override
  State<BottomImageUpload> createState() => _BottomImageUploadState();
}

class _BottomImageUploadState extends State<BottomImageUpload> {
  final ImagePicker picker = ImagePicker();
  File? myimages;

  get photo1 => null;

  void Imagetaking() async {
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);

    if (photo != Null) {
      setState(() {
        myimages = File(photo!.path);
      });
    }
  }

  void Gallerytaking() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    Future<void> blurscrn() async {
      return showModalBottomSheet(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        context: context,
        builder: (context) => BottomSheet(
          enableDrag: false,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))),
          backgroundColor: Coloursheet.deeppurpleColour,
          onClosing: () {},
          builder: (BuildContext context) => Container(
            height: 300.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        padding: const EdgeInsets.only(right: 25),
                        onPressed: () {
                          Imagetaking();
                        },
                        icon: const Icon(
                          Icons.add_a_photo,
                          size: 50,
                        )),
                    const Text(
                      'TAKE PHOTO',
                      style: TextStyle(color: Coloursheet.whiteColour),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        padding: const EdgeInsets.only(right: 25),
                        onPressed: () {
                          Gallerytaking();
                        },
                        icon: const Icon(
                          Icons.upload_file,
                          size: 50,
                        )),
                    const Text(
                      'CHOOSE IMAGE',
                      style: TextStyle(color: Coloursheet.whiteColour),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('UPLOAD IMAGE')),
      ),
      body: Column(
        children: [
          Container(
              width: 200,
              height: 200,
              child:
                  myimages != null ? Image(image: FileImage(myimages!)) : null),
          Center(
            child: ElevatedButton(
              onPressed: () {
                blurscrn();
              },
              child: const Text('Upload Image'),
            ),
          ),
        ],
      ),
    );
  }
}
