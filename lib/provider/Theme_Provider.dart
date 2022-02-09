import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system; //set the default Theme of System

  // Check and return DarkMode
  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightnes = SchedulerBinding.instance!.window.platformBrightness;
      return brightnes == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn
        ? ThemeMode.dark
        : ThemeMode.light; // Toggle between ThemeMode on Theme Switcher

    notifyListeners();
  }
}

// Here you can specify your theme Color for every Widget Color
class ThemePersonalised {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black54,
      actionsIconTheme: IconThemeData(color: Colors.red),
    ),
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.dark(),
    iconTheme: IconThemeData(color: Colors.purple.shade200, opacity: 0.8),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      actionsIconTheme: IconThemeData(color: Colors.blue),
    ),
    primaryColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(color: Colors.red, opacity: 0.8),
  );
}
