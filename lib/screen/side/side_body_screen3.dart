import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SidebodyScreen3 extends StatelessWidget {
  const SidebodyScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    print('build ${runtimeType.toString()}');
    return Container(
      color: Colors.green,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/sideBody3/sideBody3Detail');
          },
          child: const Text('33333'),
        ),
      ),
    );
  }
}
