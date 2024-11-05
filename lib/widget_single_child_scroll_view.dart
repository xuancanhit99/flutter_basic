import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Body(),
        ),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  ScrollController _scrollController = ScrollController();

  Body() { // Khong phai la state full nen phai truyen vao constructor, neu la state full thi truyen vao initState
    _scrollController.addListener(() {
      print("Scrolling ${_scrollController.offset}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: SingleChildScrollView(
      controller: _scrollController,
      padding: const EdgeInsets.all(16),
      // physics: const AlwaysScrollableScrollPhysics(), // Cho phep scroll khi khong co noi dung
      reverse: true, // Dao nguoc thu tu cac phan tu
      scrollDirection: Axis.horizontal, // Chieu ngang
      child: Row(
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.blue,
            ),
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.blue,
            ),
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.blue,
            ),
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.blue,
            ),
          ),
        ],
      ),
    ),);
  }
}