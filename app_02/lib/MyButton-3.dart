import 'package:app_02/MyAppbar.dart';
import 'package:flutter/material.dart';

class MyButton_3 extends StatelessWidget {
  const MyButton_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),

      // xử lý sự kiện cho button
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            ElevatedButton(
              // disable button
              onPressed: null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(15),
                ),
                side: BorderSide(color: Colors.black, width: 2),
                minimumSize: Size(150, 50),
                alignment: Alignment.center,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.send),
                  SizedBox(width: 10),
                  Text("ElevatedButton - Disable"),
                ],
              ),
            ),

            SizedBox(height: 50),
            ElevatedButton(
              // đè giữ lâu button
              onPressed: () {
                print("ElevatedButton - Press");
              },
              onLongPress: () {
                print("ElevatedButton - Press - Long");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(15),
                ),
                side: BorderSide(color: Colors.black, width: 2),
                minimumSize: Size(150, 50),
                alignment: Alignment.center,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.send),
                  SizedBox(width: 10),
                  Text("ElevatedButton - Press"),
                ],
              ),
            ),
            
            SizedBox(height: 50),
            InkWell(
              onTap: () {
                print("InkWell được nhấn");
              },
              onDoubleTap: () {
                print("InkWell được nhấn 2 lần");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.send),
                    SizedBox(width: 10),
                    Text("InkWell")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
