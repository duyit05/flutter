import 'package:app_02/MyAppbar.dart';
import 'package:flutter/material.dart';

class MyColumnAndRow extends StatelessWidget {
  const MyColumnAndRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // căn giữa dọc
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Hàng 1
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildBox("Box 1", Colors.red),
                buildBox("Box 2", Colors.green),
                buildBox("Box 3", Colors.blue),
              ],
            ),
            const SizedBox(height: 10), // khoảng cách giữa hàng
            // Hàng 2
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildBox("Box 4", Colors.orange),
                Column(
                  children: [
                    buildBox("Box 5.1", Colors.purple),
                    const SizedBox(height: 5),
                    buildBox("Box 5.2", Colors.pink),
                  ],
                ),
                buildBox("Box 6", Colors.teal),
              ],
            ),
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

  Widget buildBox(String text, Color color) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color.withOpacity(0.7),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
