import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ホーム'),
        backgroundColor: Color(0XFF6ABC6E),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Todoアプリを作ろう'),
            ElevatedButton(
              child: const Text('Button'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF6ABC6E),
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                context.push('/detail');
              },
            ),
          ],
        ),
      ),
    );
  }
}
