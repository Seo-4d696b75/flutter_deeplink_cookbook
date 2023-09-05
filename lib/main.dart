import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const SomePage(title: 'Home'),
      routes: [
        GoRoute(
          path: 'details',
          builder: (_, __) => const SomePage(title: 'Details'),
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'DeepLinkDemo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class SomePage extends StatelessWidget {
  const SomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Placeholder(),
    );
  }
}
