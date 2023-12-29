import 'package:flutter/material.dart';

class TransitionScreen extends StatelessWidget {
  const TransitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('build ${runtimeType.toString()}');
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Transition'),
      ),
    );
  }
}
