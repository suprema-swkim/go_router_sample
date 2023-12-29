import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.push('/details1');
                },
                child: const Text('details1 push'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  context.push('/details2');
                },
                child: const Text('details2 push'),
              ),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  context.push('/transition');
                },
                child: const Text('transition push'),
              ),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  context.push('/sideBody1');
                },
                child: const Text('sideBody1 push'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  context.push('/sideBody2');
                },
                child: const Text('sideBody2 push'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  context.push('/sideBody3');
                },
                child: const Text('sideBody3 push'),
              ),
            ],
          ),
        ));
  }
}
