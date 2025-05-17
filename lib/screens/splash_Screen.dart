import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../routes/app_routes.dart';

class Splashscreen extends StatefulWidget {
  final Duration duration;
  const Splashscreen({super.key, this.duration = const Duration(seconds: 2)});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final isLoggedIn = prefs.getBool('is_logged_in') ?? false;

    // Simulate a splash screen delay
    await Future.delayed(widget.duration);

    if (mounted) {
      if (isLoggedIn) {
        Navigator.pushReplacementNamed(context, AppRoutes.todoList);
      } else {
        Navigator.pushReplacementNamed(context, AppRoutes.login);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/splashScreen.jpg")),
    );
  }
}
