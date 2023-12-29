import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsScreen1 extends StatelessWidget {
  const DetailsScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    print('build ${runtimeType.toString()}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail1'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                context.push('/details1/screenWithPathParam/1111');
              },
              child: const Text('Path Param Screen push'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.push('/details1/screenWithQueryParam?userId=2222');
              },
              child: const Text('Query Param Screen push'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.push('/details1/screenWithExtraParam', extra: '3333');
              },
              child: const Text('Extra Param Screen push'),
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.go('/details1/screenWithPathParam/1111');
              },
              child: const Text('Path Param Screen go'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.go('/details1/screenWithQueryParam?userId=2222');
              },
              child: const Text('Query Param Screen go'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.go('/details1/screenWithExtraParam', extra: '3333');
              },
              child: const Text('Extra Param Screen go'),
            ),
          ],
        ),
      ),
    );
  }
}
