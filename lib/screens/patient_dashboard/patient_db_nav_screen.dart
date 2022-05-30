import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';



import '../../provider/patient_db_navbar_provider.dart';
import 'patient_setting.dart';
import 'patient_history.dart';
import 'patient_info_screen.dart';

 class PatientDBNavScreen extends StatelessWidget {
   const PatientDBNavScreen({Key? key}) : super(key: key);

   final List<Widget> pages = const <Widget>[
     PatientHistory(),

     PatientInfoScreen(),
     PatientSetting(),
   ];

   @override
   Widget build(BuildContext context) {
     final PatientDBBottomNavigationBarProvider page =
     Provider.of<PatientDBBottomNavigationBarProvider>(context);
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
             icon: const Icon(Icons.timeline_outlined),

           ),

           DotNavigationBarItem(
             icon: const Icon(Icons.badge_outlined),
           ),
           DotNavigationBarItem(
             icon: const Icon(Icons.settings),
           ),

         ],
       ),
     );
   }
 }


