import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_todo_app/providers/firebase_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(itemStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('ホーム'),
        backgroundColor: Color(0XFF6ABC6E),
      ),
      body: items.when(
        loading: () => const CircularProgressIndicator(),
        error: (error, stack) => Text('error...${error}'),
        data: (items) {
          return ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Center(
                  child: Column(
                    children: [
                      Text('${item.name}'),
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
                );
              });
        },
      ),
    );
  }
}
