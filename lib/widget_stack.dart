import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: SafeArea(
        child: SafeArea(
          child: Scaffold(
            body: Body(),
          ),
        ),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.grey,
      child: Stack(
        // alignment: Alignment.center,
        textDirection: TextDirection.rtl,
        clipBehavior: Clip.none, // Ve ra ngoai 
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
          ),

          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.blue,
            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.yellow,
              ),
            ),
          ),

          Positioned(
            right: 20,
            top: 20,
            width: 150,
            height: 500,
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.pink,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
