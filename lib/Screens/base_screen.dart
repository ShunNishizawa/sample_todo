import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_todo_app/components/bottom_navigation.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
