import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: Text('詳細画面'),
        backgroundColor: Color(0XFF6ABC6E),
      )),
      body: Center(
        child: Text('詳細画面です'),
      ),
    );
  }
}
