import 'package:chatgpt/features/app/home/homepage.dart';
import 'package:chatgpt/features/app/routes/on_generate.dart';
import 'package:chatgpt/features/app/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatGPT',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: OnGenerateRoute.route,
      initialRoute: "/",
      routes: {
        "/": (context) {
          return const SplashScreen(
            child: HomePage(),
          );
        }
      },
    );
  }
}
