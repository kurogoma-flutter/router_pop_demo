import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageC extends StatelessWidget {
  const PageC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page C'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Page A'),
          onPressed: () {
            context.goNamed('a');
          },
        ),
      ),
    );
  }
}
