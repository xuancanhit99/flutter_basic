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

  // Flexible co the thay the cho Expanded voi thuoc tinh fit: FlexFit.tight
  // Mac dinh la FlexFit.loose
  // Vi du o day van chia lam 3 phan nhung phan tren cung co chieu cao 100
  // 2 phan con lai chia deu (= 1/3 tong chieu cao con lai) tuc la chiem 2/3 chieu cao con lai (con thua 1 khoang)
  // Neu dung Expanded thi phan tren se chiem 100, 2 phan con lai chia deu
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 1,
          child: Container(
            height: 100,
            color: Colors.green,
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.blue,
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.yellow,
          ),
        ),
      ],
    );
  }
}
