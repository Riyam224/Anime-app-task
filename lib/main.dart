import 'package:flutter/material.dart';
import 'package:clean_arch_task/core/routing/generated_routes.dart';

void main() {
  runApp(const Task1AnimeApp());
}

class Task1AnimeApp extends StatelessWidget {
  const Task1AnimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: RouteGenerator.mainRoutingInOurApp,
    );
  }
}
