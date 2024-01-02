import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailScreen222 extends StatelessWidget {
  const DetailScreen222({super.key});

  @override
  Widget build(BuildContext context) {
    print('build ${runtimeType.toString()}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail222'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/details1');
          },
          child: const Text('go detail1'),
        ),
      ),
    );
  }
}
