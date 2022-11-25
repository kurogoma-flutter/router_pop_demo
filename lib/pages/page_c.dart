import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_pop_demo/base_scaffold.dart';

class PageC extends StatelessWidget {
  const PageC({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Page C',
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
