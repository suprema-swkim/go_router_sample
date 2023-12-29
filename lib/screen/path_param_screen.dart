import 'package:flutter/material.dart';

class PathParamScreen extends StatelessWidget {
  const PathParamScreen({
    Key? key,
    required this.userId,
  }) : super(key: key);

  final String userId;

  @override
  Widget build(BuildContext context) {
    print('build ${runtimeType.toString()}');
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Path Param Screen'),
      ),
      body: Center(
        child: Text('userId : $userId'),
      ),
    );
  }
}
