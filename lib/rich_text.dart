import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Body(),
        ),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
          text: TextSpan(
        children: [
          const TextSpan(text: "Hello ", style: TextStyle(color: Colors.red)),
          const TextSpan(text: "World ", style: TextStyle(color: Colors.blue)),
          TextSpan(
              text: "Xuan Canh ",
              onEnter: (event) {
                print("Enter");
              },
              onExit: (event) {
                print("Exit");
              },
              style: const TextStyle(
                color: Colors.green,
              )),
          const TextSpan(
            children: [
              TextSpan(
                text: "Flutter ",
              ),
              TextSpan(
                text: "Dart ",
              ),
            ],
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      )),
    );
  }
}
