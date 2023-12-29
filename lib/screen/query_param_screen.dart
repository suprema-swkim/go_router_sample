import 'package:flutter/material.dart';

class QueryParamScreen extends StatelessWidget {
  const QueryParamScreen({
    Key? key,
    required this.userId,
  }) : super(key: key);

  final String userId;

  @override
  Widget build(BuildContext context) {
    print('build ${runtimeType.toString()}');
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Query Param Screen'),
      ),
      body: Center(
        child: Text('userId : $userId'),
      ),
    );
  }
}
