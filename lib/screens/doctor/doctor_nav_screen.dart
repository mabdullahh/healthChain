import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/bottom_navbar_provider.dart';
import 'doctor_dashboard.dart';
import 'doctor_profile.dart';


class DoctorNavScreen extends StatefulWidget {
  const DoctorNavScreen({Key? key}) : super(key: key);
  static const String routeName = '/BottomBarScreen';

  @override
  State<DoctorNavScreen> createState() => _DoctorNavScreenState();
}

class _DoctorNavScreenState extends State<DoctorNavScreen> {

  final List<Widget> pages = const <Widget>[
    DoctorDashBoard(),

    DoctorWalletScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBarProvider page =
    Provider.of<BottomNavigationBarProvider>(context);
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
            icon: const Icon(Icons.person_outline),
          ),

        ],
      ),
    );
  }
}


