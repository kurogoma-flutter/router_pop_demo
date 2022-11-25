import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page A'),
      ),
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
