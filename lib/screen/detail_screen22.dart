import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

StreamController<int> controller1 = StreamController();

class DetailsScreen22 extends StatefulWidget {
  const DetailsScreen22({super.key});

  @override
  State<DetailsScreen22> createState() => _DetailsScreen22State();
}

class _DetailsScreen22State extends State<DetailsScreen22> {
  @override
  void initState() {
    super.initState();
    controller1 = StreamController(
      onListen: () async {
        await Future<void>.delayed(const Duration(seconds: 2));
        controller1.add(1);
        await Future<void>.delayed(const Duration(seconds: 2));
        controller1.add(2);
        await Future<void>.delayed(const Duration(seconds: 2));
        controller1.add(3);
      },
    );
  }

  @override
  void dispose() {
    print('dispose ${runtimeType.toString()}');
    controller1.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build ${runtimeType.toString()}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail2'),
      ),
      body: StreamBuilder(
        stream: controller1.stream,
        builder: (context, snapshot) {
          if (snapshot.hasData == false) return const Center(child: CircularProgressIndicator());
          print('stream value : ${snapshot.data}');
          return Center(
            child: ElevatedButton(
              onPressed: () {
                context.push('/details2/details22/details222');
              },
              child: Text(
                snapshot.data.toString(),
              ),
            ),
          );
        },
      ),
    );
  }
}
