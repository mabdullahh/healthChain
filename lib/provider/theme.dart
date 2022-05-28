import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AppThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final Brightness brightness =
          SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class AppThemes {
  static const Color _primary = Color(0xff5E9DA2);
  static const Color _secondary = Color(0xFF627C6D);
  static final ThemeData dark = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme.dark(
      primary: _primary,
      secondary: _secondary,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.grey.shade900,
      selectedItemColor: _primary,
      unselectedItemColor: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      color: _primary,
      centerTitle: true,
      elevation: 0,

    ),
    fontFamily: 'Montserrat',


  );

  static final ThemeData light = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: _primary,
    colorScheme: const ColorScheme.light(
      primary: _primary,
      secondary: _secondary,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: _primary,
      unselectedItemColor: Colors.grey.shade300,
    ),
    appBarTheme: const AppBarTheme(
      color: _primary,
      centerTitle: true,
      elevation: 0,

    ),
    cardColor: Colors.grey.shade200,
    iconTheme: const IconThemeData(
      color: _primary,
    ),
    primaryTextTheme: TextTheme(
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        color: Colors.grey.shade500,
      ),

    ),
    fontFamily: 'Montserrat',

  );
}
