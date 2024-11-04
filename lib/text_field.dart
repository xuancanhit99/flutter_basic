import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Body2(),
        ),
      ),
    ),
  );
}

class Body2 extends StatefulWidget {
  const Body2({super.key});

  @override
  State<Body2> createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  String textValue = "";

  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textEditingController.addListener(() {
      print("Text field changed ${textEditingController.text}");
      setState(() {
        textValue = textEditingController.text.toUpperCase();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: textEditingController,
            autofocus: true,
            // textAlign: TextAlign.center,
            // textDirection: TextDirection.rtl,
            textInputAction: TextInputAction.go,
            textCapitalization: TextCapitalization.words, // Viết hoa chữ cái đầu
            style: const TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            cursorColor: Colors.green,
            cursorWidth: 5,
            cursorRadius: const Radius.circular(10),
            //maxLines: 3,
            // obscureText: true, // Ẩn text kiểu password
            // maxLength: 100,

            decoration: InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            // decoration: InputDecoration( // Neu decoration de null thi se khong co khung giong password
            //   hintText: "Enter your name",
            //   // labelText: "Name",
            //   helperText: "Helper text",
            //   labelStyle: const TextStyle(
            //     color: Colors.blue,
            //     fontSize: 20,
            //   ),
            //   border: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   // icon: const Icon(Icons.search),
            //   // prefixIcon: const Icon(Icons.person),
            //   // suffixIcon: const Icon(Icons.remove_red_eye),
            //   label: Icon(Icons.person),
            // ),


            // onChanged: (value) {
            //   print("Text field changed $value");
            //   setState(() {
            //     textValue = value;
            //   });
            //
            // },
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Submit"),
          ),
          Text(textValue),
        ],
      ),
    );
  }
}
