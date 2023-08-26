import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Magnata extends StatefulWidget {
  const Magnata({Key? key}) : super(key: key);

  @override
  State<Magnata> createState() => _MagnataState();
}

class _MagnataState extends State<Magnata> {
  int _totalMoney = 0;

  void _addMoney() {
    setState(() {
      _totalMoney = _totalMoney + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magnata"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "Fique Rico!",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 29.9,
                  ),
                ),
              ),
            ),
            Expanded(
                child: Center(
              child: Text(
                "\$ $_totalMoney",
                style: TextStyle(
                    fontSize: 45.6,
                    color: Colors.green,
                    fontWeight: FontWeight.w700),
              ),
            )),
            Expanded(
              child: Center(
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightGreen),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 50.00))),
                  onPressed: _addMoney,
                  child: Text("Mais Grana!",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
