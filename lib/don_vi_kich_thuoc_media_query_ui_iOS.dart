import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 13
// Colors cung can thu vien material
// Tom lai nen dung thu vien material truoc-MaterialApp
// Nhung cai nho nho can iOS them vao sau
// Trong Mobile App - Android App thuong dung don vi dp va iOS dung don vi pt
// Khong nen dung pixel de scale

void main() {
  runApp(
    const CupertinoApp(
      home: SafeArea(
        child: CupertinoPageScaffold(
          child: Body(),
        ),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    print("Screen Info: ${MediaQuery.of(context).devicePixelRatio}"
        ", ${MediaQuery.of(context).textScaler}");
    return Container(
        width: 300,
        height: 300,
        color: Colors.blue,
        child: Column(
      children: [
        Text("Hello iPhone"),
        CupertinoButton(child: Text("iOS Button"), onPressed: () {

        },),
        ElevatedButton(onPressed: () {

        }, child: Text("Android Button")),
      ],
    ));
  }
}
