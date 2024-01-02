import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsScreen2 extends StatefulWidget {
  const DetailsScreen2({super.key});

  @override
  State<DetailsScreen2> createState() => _DetailsScreen2State();
}

class _DetailsScreen2State extends State<DetailsScreen2> {
  String value = '111';

  @override
  void dispose() {
    print('dispose ${runtimeType.toString()}');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build ${runtimeType.toString()}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail2'),
      ),
      body: FutureBuilder(
        future: future(),
        builder: (context, snapshot) {
          if (snapshot.hasData == false) return const Center(child: CircularProgressIndicator());
          return Center(
            child: ElevatedButton(
              onPressed: () {
                context.push('/details2/details22');
              },
              child: Text('Next Screen : $value'),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            value = '${value}1';
          });
        },
      ),
    );
  }

  Future<String> future() async {
    await Future.delayed(const Duration(seconds: 2));
    return 'abcd';
  }
}
