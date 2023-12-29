import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsScreen2 extends StatelessWidget {
  const DetailsScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    print('build ${runtimeType.toString()}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail2'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.push('/details2');
          },
          child: const Text('DetailsScreen2'),
        ),
      ),
    );
  }
}
