import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_pop_demo/base_scaffold.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Page B',
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Page C'),
          onPressed: () {
            context.goNamed('c');
          },
        ),
      ),
    );
  }
}
