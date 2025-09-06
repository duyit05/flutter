import 'package:app_02/MyAppbar.dart';
import 'package:app_02/main.dart';
import 'package:flutter/material.dart';

class MyButton_2 extends StatelessWidget {
  const MyButton_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("ElevatedButton");
              },
              // thêm style cho button
              style: ElevatedButton.styleFrom(
                // thay đổi màu nền cho button
                backgroundColor: Colors.yellow,
                // màu của các nội dung bên trong, chinhr màu chữ trong button
                foregroundColor: Colors.blue,
                // thay đổi khung của button, radius
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                // padding
                padding: EdgeInsets.symmetric(
                  horizontal: 20, // chiều ngang
                  vertical: 15, // chiều dọc
                ),
                // độ bóng của nút
                elevation: 20,
                // chỉnh viền button
                side: BorderSide(color: Colors.black, width: 2),
                // Kích thuwocs tối thiểu của nút
                minimumSize: Size(150, 50),
                // nội dung hiển thị bên trong nút
                alignment: Alignment.center
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 10),
                  Text("Send - Elevated Button",style: TextStyle(fontSize: 20),)
                ],

              ),
            ),

            SizedBox(height: 50),
            OutlinedButton(
              onPressed: () {
                print("Clicked!");
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                // side: chỉnh viền (color: màu, width: độ dàu của viền)
                side: BorderSide(color: Colors.red, width: 2),
                // đặt kích thước tối thiểu cho button -> dùng khi các nút bằng nhau
                minimumSize: Size(150, 50), // nút có kích thước tối thiểu (chiều rộng 150, chiều cao 50)
                // căn chỉnh nội dung bên trong nút -> dùng khi muốn text/icon nằm lệch trái/phải
                alignment: Alignment.center,
              ),
              child: Row(
                // chiếm tối thiểu chiều ngang nếu không có sẽ chiếm full
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.send),
                  SizedBox(width: 10),
                  Text("Send - Outline Button", style: TextStyle(fontSize: 20)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
