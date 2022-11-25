import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_pop_demo/main.dart';
import 'package:router_pop_demo/pages/page_a.dart';
import 'package:router_pop_demo/pages/page_b.dart';
import 'package:router_pop_demo/pages/page_c.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => const MaterialPage(child: HomePage()),
    ),
    GoRoute(
      path: '/a',
      name: 'a',
      pageBuilder: (context, state) => const MaterialPage(child: PageA()),
    ),
    GoRoute(
      path: '/b',
      name: 'b',
      pageBuilder: (context, state) => const MaterialPage(child: PageB()),
    ),
    GoRoute(
      path: '/c',
      name: 'c',
      pageBuilder: (context, state) => const MaterialPage(child: PageC()),
    ),
  ],
);
