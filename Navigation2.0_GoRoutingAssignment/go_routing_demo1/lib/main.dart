import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screens/home_screen.dart';
import 'screens/details_screen.dart';

 class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'go_router Lesson 1',
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
 }

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/details', builder: (context, state) => const DetailsScreen(),)
  ],
);
