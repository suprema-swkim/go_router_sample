import 'package:flutter/material.dart';

class ExtraParamScreen extends StatelessWidget {
  const ExtraParamScreen({
    Key? key,
    required this.userId,
  }) : super(key: key);

  final String userId;

  @override
  Widget build(BuildContext context) {
    print('build ${runtimeType.toString()}');
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('Extra Param Screen'),
      ),
      body: Center(
        child: Text('userId : $userId'),
      ),
    );
  }
}
