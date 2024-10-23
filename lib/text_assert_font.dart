import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: SafeArea(
    child: Scaffold(
        appBar: AppBar(
          title: const Text("App title"),
          backgroundColor: Colors.blue,
        ),
        body: Center(child: TextDemo())),
  )));
}

class TextDemo extends StatelessWidget {
  const TextDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "W/ziparchive(15812): Unable to open '/system_ext/framework/unipnp-framework.dm': No such file or directory",
      // maxLines: 4,
      // overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start, // start va end nen dung hon left va right (mot so ngon ngu can tu phai qua trai)
      //textDirection: TextDirection.ltr,
      //softWrap: false,// false: khong xuong dong, true: xuong dong
      textScaler: TextScaler.linear(1.5),
      style: TextStyle(
        color: Colors.blue,
        backgroundColor: Colors.yellow,
        // decoration: TextDecoration.lineThrough
        fontSize: 10,
        fontStyle: FontStyle.italic,
        //fontWeight: FontWeight.bold,
        fontFamily: "PlaywriteGBS",
      ),
    );
  }
}
