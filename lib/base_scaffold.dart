import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

///
/// BaseScaffold
///
/// [title]は、アプリバーのタイトルとして使用されます。
///
/// [body]は、アプリバーの下に配置されます。
///
/// [leftSwipe]は、左スワイプで戻る処理を制御します。
///
class BaseScaffold extends StatelessWidget {
  const BaseScaffold({
    super.key,
    required this.title,
    required this.body,
    this.leftSwipe = true,
  });

  final String title;
  final Widget body;
  final bool leftSwipe;

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
          // 左スワイプ禁止の場合は、処理を抜ける
          if (!leftSwipe) {
            return;
          }
          // pop可能な場合は、左スワイプで戻る
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
