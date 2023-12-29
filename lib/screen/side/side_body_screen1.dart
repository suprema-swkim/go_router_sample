import 'package:flutter/material.dart';

class SidebodyScreen1 extends StatelessWidget {
  const SidebodyScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    print('build ${runtimeType.toString()}');
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text(
          '111111',
        ),
      ),
    );
  }
}
