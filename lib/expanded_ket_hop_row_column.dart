import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Body2(),
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
    return Container(
      child: Column(
        children: [
          Container(height: 100, width: 0, color: Colors.yellow,),

          // Chia ti le theo Explanded nam giu (Khong tinh phan khac-container o tren)
          Expanded(flex: 1, child: Container(color: Colors.green,width: 100,)),
          Expanded(flex: 2, child: Container(color: Colors.blue, width: 100,)),
        ],
      ),
    );
  }
}

class Body2 extends StatelessWidget {
  const Body2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const Expanded(flex: 1, child: SizedBox( width: 100, child: Column(
            children: [
              Text("Setting"),
              Text("Home"),
              Text("About"),
            ],
          ),)),
          Expanded(flex: 3, child: Container(color: Colors.green,)),

        ],
      ),
    );
  }
}

