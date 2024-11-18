import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slask_exercise/dependency_injection.dart';
import 'package:slask_exercise/presentation/pages/home_page/home_page.dart';

void main() {
  initDependencyInjection();
  runApp(const MyApp());
}
final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/' ,
      builder: (context, state) => const HomePage(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
