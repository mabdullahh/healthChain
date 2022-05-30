import 'package:flutter/material.dart';

import 'package:health_chain/screens/onboarding_screen.dart';

import 'package:provider/provider.dart';

import 'provider/bottom_navbar_provider.dart';
import 'provider/patient_db_navbar_provider.dart';

import 'provider/patient_navbar_provider.dart';
import 'provider/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AppThemeProvider>.value(value: AppThemeProvider()),
      ChangeNotifierProvider<BottomNavigationBarProvider>.value(
          value: BottomNavigationBarProvider()),
      ChangeNotifierProvider<PatientDBBottomNavigationBarProvider>.value(
          value: PatientDBBottomNavigationBarProvider()),
      ChangeNotifierProvider<PatientBottomNavigationBarProvider>.value(
          value: PatientBottomNavigationBarProvider()),
    ],
    child: Consumer<AppThemeProvider>(
      builder: (BuildContext context, AppThemeProvider theme, _) => MaterialApp(
        title: 'HealthChain',
        themeMode: theme.themeMode,
        theme: AppThemes.light,
        darkTheme: AppThemes.dark,
        home: OnboardingPage(),
      ),
    ),
  ));
}
