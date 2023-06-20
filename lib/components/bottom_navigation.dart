import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../providers/base_page_provider.dart';

class BottomNavigation extends ConsumerStatefulWidget {
  const BottomNavigation({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BottomNavigationState();
}

class _BottomNavigationState extends ConsumerState<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    final position = ref.watch(basePageProvider);

    return BottomNavigationBar(
        onTap: (value) => _onTap(value),
        currentIndex: position,
        backgroundColor: Colors.red,
        selectedLabelStyle: const TextStyle(
          color: Colors.green,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined), label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined), label: 'Setting')
        ]);
  }

  void _onTap(int index) {
    ref.read(basePageProvider.notifier).setPosition(index);

    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/notification');
        break;
      case 2:
        context.go('/setting');
        break;
      default:
    }
  }
}
