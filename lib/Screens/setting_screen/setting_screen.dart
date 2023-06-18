import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('設定画面'),
        backgroundColor: Color(0XFF6ABC6E),
      ),
      body: Center(
        child: const Text('設定'),
      ),
    );
  }
}
