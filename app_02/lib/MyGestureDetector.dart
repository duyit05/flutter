import 'package:app_02/MyAppbar.dart';
import 'package:flutter/material.dart';

class MyGestureDetector extends StatelessWidget {
  const MyGestureDetector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                print("Người dùng tap");
              },
              onDoubleTap: () {
                print("Người dùng double tap");
              },
              onLongPress: () {
                print("Người dùng giữ nút");
              },
              onPanUpdate: (detail) {
                print("Kéo - di chuyển ${detail.delta}");
              },
              child: Center(
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.blue,
                  child: Center(child: Text("GestureDetector")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
