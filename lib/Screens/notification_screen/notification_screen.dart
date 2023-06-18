import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お知らせ画面'),
        backgroundColor: Color(0XFF6ABC6E),
      ),
      body: Center(
        child: const Text('お知らせ'),
      ),
    );
  }
}
