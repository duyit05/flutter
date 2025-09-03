import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
      // tách nhỏ AppBar ra riêng để tái sử dụng
      return AppBar(
          title: Text("This is Appbar"),
          backgroundColor: Colors.red,
          // độ bóng của nền
          elevation: 4,
          // thêm nút cho appBar
          actions: [
            IconButton(onPressed:  (){print("B1");}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){print("B2");}, icon: Icon(Icons.abc)),
            IconButton(onPressed: (){print("B3");}, icon: Icon(Icons.more_vert))
          ],
      );
  }

  // xác định chiều cao của Appbar để cho Scaffold biết
  @override
  Size get preferredSize
  => const Size.fromHeight(kToolbarHeight);

}