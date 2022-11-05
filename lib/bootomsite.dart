import 'package:flutter/material.dart';

import 'imageDemo.dart';

class BottomsiteDemo extends StatefulWidget {
  BottomsiteDemo({super.key});

  @override
  State<BottomsiteDemo> createState() => _BottomsiteDemoState();
}

class _BottomsiteDemoState extends State<BottomsiteDemo> {
  bottomsite() {
    return showModalBottomSheet(
        context: context, builder: (context) => Demoimage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Image picker"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            bottomsite();
          },
          child: Center(child: Icon(Icons.add)),
        ),
      ),
    );
  }
}
