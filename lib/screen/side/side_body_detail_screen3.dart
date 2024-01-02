import 'package:flutter/material.dart';

class SidebodyDetailScreen3 extends StatelessWidget {
  const SidebodyDetailScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    print('build ${runtimeType.toString()}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('SidebodyDetailScreen3'),
      ),
      body: Container(
        color: Colors.green,
        child: const Center(
          child: Text('333333!!'),
        ),
      ),
    );
  }
}
