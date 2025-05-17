import 'package:flutter/material.dart';
import 'package:project/screens/login_screen.dart';
import 'package:project/screens/splash_Screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../screens/todo_list_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/profile_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String login = '/login';
  static const String todoList = '/todo-list';
  static const String settings = '/settings';
  static const String profile = '/profile';
  static const String splash = '/splash';

  static Map<String, WidgetBuilder> getRoutes({
    required bool darkMode,
    required ValueChanged<bool> toggleDarkMode,
  }) {
    return {
      home: (context) => const TodoListPage(),
      todoList: (context) => const TodoListPage(),
      settings:
          (context) => SettingsScreen(
            darkMode: darkMode,
            onDarkModeChanged: toggleDarkMode,
          ),
      profile: (context) => const ProfileScreen(),
      login: (context) => LoginScreen(),
      splash: (context) => Splashscreen(),
    };
  }
}
