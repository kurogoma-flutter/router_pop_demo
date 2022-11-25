import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_pop_demo/base_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Home',
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
