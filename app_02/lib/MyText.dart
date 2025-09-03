import 'package:app_02/MyAppbar.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // tái sử dụng appbar
      appBar: const MyAppbar(),

      // màu nền
      backgroundColor: Colors.amber,

      // nội dụng của body
      body: Center(
        // trong body có các column
        child: Column(
          // trong column có thằng con
          children: [
            // cách phía trên ra 50
            const SizedBox(height: 50),

            // Text cơ bản
            const Text("Nguyễn Văn Duy"),

            const SizedBox(height: 50),

            // Có thể style cho text
            const Text(
              "Nguyễn Văn Duy xin chào các bạn đang học lập trình flutter!",
              // căn giữa
              textAlign: TextAlign.center,

              // điều chỉnh style
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                // khoảng cách giữa cách chữ
                letterSpacing: 1.5,
              ),
            ),

            const SizedBox(height: 50),
            const Text(
              "Flutter là mobile UI framework của Google để tạo ra các giao "
              "diện chất lượng cao trên iOS và Android trong khoảng thời "
              "gian ngắn. Flutter hoạt động với những code sẵn có được "
              "sử dụng bởi các lập trình viên, các tổ chức.",
              // chỉ lấy 2 dòng text khi nội dung quá dài
              maxLines: 2,

              // hiện thị dấu ... khi nội dung quá dài
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.deepOrange, fontSize: 25),
            ),
          ],
        ),
      ),

      // Tạo 1 nuts
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.phone),
      ),

      // tạo nhiều icon ở dưới
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
