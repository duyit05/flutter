import 'package:app_02/MyAppbar.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),
      body: Padding(
        // cách lề 20px
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: "Họ và tên",
                  hintText: "Nhập vào họ và tên",
                  helperText: "Nhập vào họ và tên",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                // Kiểu nhập cho input
                keyboardType: TextInputType.text,
              ),

              SizedBox(height: 30),
              // khai báo 1 text field
              TextField(
                // khai báo để style
                decoration: InputDecoration(
                  // lable sẽ nhảy lên trên input khi click vào trong
                  labelText: "Email",
                  // nội dung hiển thị ở trong input khi click
                  hintText: "Nhập vào email",
                  // text xuất hiện ở dưới input
                  helperText: "Nhập vào email cá nhân",
                  // icon ở đầu
                  prefixIcon: Icon(Icons.email),
                  // icon ở cuối
                  suffixIcon: Icon(Icons.clear),
                  // thêm border
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  // thuộc tính xác định có màu cho input không
                  // filled: true,
                  // màu cho input
                  // fillColor: Colors.blue
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: "Số điện thoại",
                  hintText: "Nhập số điện thoại của bạn",
                  helperText: "Nhập số điện thoại",
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.clear),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),

              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: "Ngày/tháng/năm",
                  hintText: "Nhập ngày/tháng/năm sinh",
                  helperText: "Nhập ngày/tháng/năm/ sinh của bạn",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: Icon(Icons.date_range),
                ),
                keyboardType: TextInputType.datetime,
              ),

              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: "Mật khẩu",
                  hintText: "Nhập mật khẩu",
                  helperText: "Nhập mật khẩu của bạn",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: Icon(Icons.check),
                ),
                // ẩn text trong password thành *
                obscureText: true,
                obscuringCharacter: "*",
              ),

              // sự kiện cho input
              SizedBox(height: 20),
              TextField(
                onChanged: (value) {
                  print("Đang nhập: $value");
                },
                onSubmitted: (value) {
                  print("Đã submit nội dung: $value");
                },
                decoration: InputDecoration(
                  labelText: "Mô tả",
                  hintText: "Nhập mô tả",
                  helperText: "Nhập mô tả của bạn",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: Icon(Icons.text_fields),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
