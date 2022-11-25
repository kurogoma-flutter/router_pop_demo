import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BaseScaffold extends StatelessWidget {
  const BaseScaffold({
    super.key,
    required this.title,
    required this.body,
  });

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.goNamed('/');
        return true;
      },
      child: GestureDetector(
        /// GoRouterのcanPop()がtrueの場合は、左スワイプで戻る
        onHorizontalDragEnd: (details) {
          if (context.canPop() && details.primaryVelocity! > 12) {
            context.pop();
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: body,
        ),
      ),
    );
  }
}
