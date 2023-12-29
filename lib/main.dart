import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/route.dart';

void main() {
  GoRouter.optionURLReflectsImperativeAPIs = true; //push로 url을 변경하는 경우
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('build ${runtimeType.toString()}');
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
