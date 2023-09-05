import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, state) => SomePage(title: 'Home', uri: state.uri),
      routes: [
        GoRoute(
          path: 'details',
          builder: (_, state) => SomePage(title: 'Details', uri: state.uri),
        ),
      ],
    ),
  ],
  errorBuilder: (_, state) => SomePage(title: 'Not Found', uri: state.uri),
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
  const SomePage({
    Key? key,
    required this.title,
    required this.uri,
  }) : super(key: key);

  final String title;
  final Uri uri;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('uri: $uri'),
      ),
    );
  }
}
