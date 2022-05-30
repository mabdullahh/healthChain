import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:health_chain/provider/patient_navbar_provider.dart';
import 'package:health_chain/screens/patient/patient_otp_screen.dart';
import 'package:health_chain/screens/patient/patient_profile.dart';
import 'package:health_chain/screens/patient_dashboard/patient_history.dart';
import 'package:provider/provider.dart';

import 'patient_labreport_screen.dart';

class PatientNavScreen extends StatelessWidget {
  const PatientNavScreen({Key? key}) : super(key: key);

  final List<Widget> pages = const <Widget>[
    PatientOtp(),
    PatientHistory(),
    PatientLabReportScreen(),
    PatientWalletScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final PatientBottomNavigationBarProvider page =
        Provider.of<PatientBottomNavigationBarProvider>(context);
    return Scaffold(
      body: pages[page.selectedPage],
      extendBody: true,
      bottomNavigationBar: DotNavigationBar(
        margin: const EdgeInsets.only(left: 10, right: 10),
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 5.0,
              blurStyle: BlurStyle.outer)
        ],
        dotIndicatorColor:
            Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
        selectedItemColor:
            Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
        unselectedItemColor:
            Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
        onTap: (int updatedPage) => page.updateSelectedPage(updatedPage),
        currentIndex: page.selectedPage,
        enablePaddingAnimation: false,
        enableFloatingNavBar: true,


        items: [
          DotNavigationBarItem(
            icon: const Icon(Icons.dashboard_outlined),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.health_and_safety_rounded),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.biotech_rounded),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.person_outline),
          ),

        ],
      ),
    );
  }
}
