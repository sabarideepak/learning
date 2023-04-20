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
  File? mygallery;
  File? multipleimage;
  List<XFile> PickedMultipleImage = [];
  void Imagetaking() async {
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);

    if (photo != null) {
      setState(() {
        myimages = File(photo.path);
      });
    }
  }

  void Gallerytaking() async {
    final XFile? photo = await picker.pickImage(source: ImageSource.gallery);

    if (photo != null) {
      setState(() {
        mygallery = File(photo.path);
      });
    }
  }

  void Multipleimage() async {
    final List<XFile>? Multiple = await picker.pickMultiImage();
    if (Multiple != null) {
      setState(() {
        PickedMultipleImage.addAll(Multiple);
      });
    }
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
            height: 100.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
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
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'TAKE PHOTO',
                      style: TextStyle(color: Coloursheet.whiteColour),
                    )
                  ],
                ),
                Column(
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
                    const SizedBox(
                      height: 10,
                    ),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: CircleAvatar(
          child: TextButton(
              onPressed: () {
                Multipleimage();
              },
              child: const Text(
                'SelectImage',
                style: TextStyle(fontSize: 8, color: Colors.white),
              ))),
      appBar: AppBar(
        title: const Center(child: Text('UPLOAD IMAGE')),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                        width: 100,
                        height: 100,
                        child: myimages != null
                            ? Image(
                                image: FileImage(myimages!),
                                fit: BoxFit.cover,
                              )
                            : null),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                        width: 100,
                        height: 100,
                        child: mygallery != null
                            ? Image(
                                image: FileImage(mygallery!),
                                fit: BoxFit.cover,
                              )
                            : null),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: 500,
                height: 400,
                child: GridView.builder(
                  itemCount: PickedMultipleImage.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => Stack(
                    alignment: AlignmentDirectional.topEnd,
                    fit: StackFit.expand,
                    children: [
                      Container(
                        child: Image(
                            image: FileImage(
                                File(PickedMultipleImage[index].path)),
                            fit: BoxFit.cover),
                      ),
                      Positioned(
                        left: 5,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              PickedMultipleImage.removeAt(index);
                            });
                          },
                          icon: const Icon(Icons.delete,
                              color: Colors.yellow, weight: 10),
                          color: Colors.yellowAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
        ],
      ),
    );
  }
}
