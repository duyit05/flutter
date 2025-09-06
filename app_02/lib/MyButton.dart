import 'package:app_02/MyAppbar.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),

            // ElevatedButton là button nổi với hiệu ứng đổ bóng
            // thường được sử dụng cho các hành động chính trong ứng dụng
            ElevatedButton(
              onPressed: () {
                print("ElevatedButton");
              },
              child: Text("ElevatedButton", style: TextStyle(fontSize: 30)),
            ),

            SizedBox(height: 50),
            // Text button là một button thẳng không có đổ bóng
            // dùng cho các hành động thứ yếu hoặc trong các thành phần Dialog, Card

            TextButton(
                onPressed: (){print("TextButton");},
                child: Text("TextButton", style: TextStyle(fontSize: 30),)
            ),

            SizedBox(height: 50),
            // Outline button có viền bao quanh, không có màu nền
            // phù hợp với các hành động thay thế
            OutlinedButton(
                onPressed: (){print("OutlinedButton");},
                child: Text("OutlinedButton", style: TextStyle(fontSize: 30))
            ),

            SizedBox(height: 50),
            // Icon button là button chỉ bao gồm icon, không có văn bản
            // thường sử dụng trong AppBar hặc ToolBar
            
            IconButton(
                onPressed: () {print("IconButton");}, 
                icon: Icon(Icons.favorite)
            ),

            SizedBox(height: 50),
            // FloatingActionButton là button dạng hình tròn, nổi trên giao dện
            // thường dùng cho hành động chính của màn hình
            FloatingActionButton(
                onPressed: () {print("FloatingActionButton");},
                child: Icon(Icons.add),
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.phone),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm kiếm"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Cá nhân"),
        ],
      ),
    );
  }
}
