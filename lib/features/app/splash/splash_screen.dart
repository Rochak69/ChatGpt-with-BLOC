import 'dart:async';
import 'package:chatgpt/features/app/routes/on_generate.dart';
import 'package:chatgpt/utils/app_images.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, this.child});
  final Widget? child;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil(
          context, materialBuilder(widget: widget.child!), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          scale: 1.7,
          AppImages.openaiIcon,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
