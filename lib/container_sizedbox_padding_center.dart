import 'package:flutter/material.dart';

// Safe Area truoc hay Scaffold truoc deu duoc
void main() {
  runApp(const MaterialApp(
      home: SafeArea(
          child: Scaffold(
    body: Body(),
  ))));
}

// Tach thanh cac widget rieng biet
class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 250,
        //color: Colors.blue,
        //padding: EdgeInsets.fromLTRB(10, 20, 30, 40), // Dinh nghia no-Container va thang ben trong-Text
        margin: EdgeInsets.all(20),
        // Dinh nghia no-Container va thang ben ngoai
        // Container cach thang ben ngoai-Toan man hinh = 20
        child: Text("Hello World"),
        alignment: Alignment.center,
        transform:
            Matrix4.rotationZ(0.1), // Xoay 0.1 radian
        decoration: BoxDecoration(
          // Chinh sua nang cao
          //shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.pink,
              blurRadius: 10,
              offset: Offset(10, 10),
            ),
          ],
          color: Colors.red, // Mau nen, neu dung decoration thi khong dung color o ngoai phai de o day
          border: Border.all(color: Colors.brown, width: 5, style: BorderStyle.solid),
          //borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
