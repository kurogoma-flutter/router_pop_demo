import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_pop_demo/base_scaffold.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Page A',
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Page B'),
          onPressed: () {
            context.goNamed('b');
          },
        ),
      ),
    );
  }
}
