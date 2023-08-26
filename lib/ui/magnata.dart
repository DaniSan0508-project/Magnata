import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Magnata extends StatefulWidget {
  const Magnata({Key? key}) : super(key: key);

  @override
  State<Magnata> createState() => _MagnataState();
}

class _MagnataState extends State<Magnata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magnata"),
        backgroundColor: Colors.lightGreen,
      ),
    );
  }
}

