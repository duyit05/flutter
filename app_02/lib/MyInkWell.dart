import 'package:app_02/MyAppbar.dart';
import 'package:flutter/material.dart';

class MyInkWell extends StatelessWidget {
  const MyInkWell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),

      body: Center(
        child: InkWell(
          onTap: () {print("InkWell được nhấn");},
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
            ),
            child: Text("InkWell"),
          ),
        ),
      ),
    );
  }
}