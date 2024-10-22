import 'package:flutter/material.dart';

// Widget trong Flutter
// Neu can quan ly trang thai stfull khong thi stless
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Center(child: Widget2(false))),
      ),
    );
  }
}

class Widget1 extends StatelessWidget {
  final bool isChecked;

  const Widget1(this.isChecked, {super.key});

  @override
  Widget build(BuildContext context) {
    return isChecked ? const Text("On") : const Text('OFF');
  }
}

class Widget2 extends StatefulWidget {
  final bool isChecked;

  const Widget2(this.isChecked, {super.key});

  @override
  State<Widget2> createState() => _Widget2State();
}

class _Widget2State extends State<Widget2> {
  late bool _localIsChecked;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _localIsChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            _localIsChecked = !_localIsChecked;
          });
        },
        child: _localIsChecked ? const Text("on") : const Text('off'));
  }
}
