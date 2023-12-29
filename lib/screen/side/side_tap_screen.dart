import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideTapScreen extends StatelessWidget {
  const SideTapScreen({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final String uri = GoRouterState.of(context).uri.toString();
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: kToolbarHeight,
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        GoRouter.of(context).go('/sideBody1');
                      },
                      icon: Icon(
                        Icons.home,
                        color: uri.startsWith('/sideBody1') ? Colors.black : Colors.grey,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        GoRouter.of(context).go('/sideBody2');
                      },
                      icon: Icon(
                        Icons.business,
                        color: uri.startsWith('/sideBody2') ? Colors.black : Colors.grey,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        GoRouter.of(context).go('/sideBody3');
                      },
                      icon: Icon(
                        Icons.notification_important_rounded,
                        color: uri.startsWith('/sideBody3') ? Colors.black : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
