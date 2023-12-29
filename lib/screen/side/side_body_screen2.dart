import 'package:flutter/material.dart';

class SidebodyScreen2 extends StatelessWidget {
  const SidebodyScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    print('build ${runtimeType.toString()}');
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text('222222'),
      ),
    );
  }
}
