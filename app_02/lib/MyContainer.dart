import 'package:app_02/MyAppbar.dart';
import 'package:app_02/main.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          // thêm padding
          padding: const EdgeInsets.all(20),
          // thêm margin
          margin: const EdgeInsets.all(10),

          // custom cho container
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              )],
          ),
          child: Align(
            alignment: Alignment.center,
            child: const Text(
              "This is container",
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
