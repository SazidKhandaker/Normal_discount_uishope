import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Demoimage extends StatefulWidget {
  const Demoimage({super.key});

  @override
  State<Demoimage> createState() => _DemoimageState();
}

class _DemoimageState extends State<Demoimage> {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController Coursecontroller = TextEditingController();

  XFile? image_picker;

  chooseimage() async {
    final ImagePicker imgpicker = ImagePicker();
    image_picker = await imgpicker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      color: Colors.black38,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 30),
            child: TextFormField(
              controller: namecontroller,
              decoration: InputDecoration(
                  hintText: "Your name",
                  labelText: "Your  name",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.red))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
            child: TextFormField(
              controller: Coursecontroller,
              decoration: InputDecoration(
                  hintText: "Your course",
                  labelText: "Your course name",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.red))),
            ),
          ),
          Expanded(
              child: image_picker == null
                  ? IconButton(
                      onPressed: () {
                        chooseimage();
                      },
                      icon: Icon(Icons.camera))
                  : Image.file(File(image_picker!.path))),
        ],
      ),
    );
  }
}
