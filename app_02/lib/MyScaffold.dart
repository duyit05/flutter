import "package:app_02/MyAppbar.dart";
import "package:flutter/material.dart";

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    // trả về Scaffold - widget cung cap bố cục meterail design cơ bản
    // màn hình
    return Scaffold(

      // HEADER
      // Khai báo và dùng MyAppbar
      appBar: const MyAppbar(),

      // BODY
      backgroundColor: Colors.blue,
      body: Center(child: Text("Nội dung chính")),

      // BUTTON
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Press");
        },
        child: Icon(Icons.add_ic_call),
      ),

      // ICON Ở DƯỚI CÙNG
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label:"Trang chủ"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm kiêm"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Cá nhân")
        ],
      ),
    );
  }
}
