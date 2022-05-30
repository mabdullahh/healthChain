import 'package:flutter/material.dart';


import 'package:health_chain/widgets/rounded_button.dart';
import 'package:health_chain/widgets/rounded_input.dart';

import '../../utilities/constants.dart';
import '../patient_dashboard/patient_db_nav_screen.dart';

class DoctorDashBoard extends StatelessWidget {
  const DoctorDashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DashBoard'),
        automaticallyImplyLeading: false,
      ),


      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  const Text(
                    'Enter Patient\'s CNIC and OTP to enter Patients panel',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30,),
                  // const RoundedInput(icon: Icons.abc, hint: 'CNIC'),
                  // const RoundedInput(icon: Icons.abc, hint: 'OTP'),
                  const SizedBox(height: 15,),
                   RoundedButton(title: 'Patient\'s Panel',onTap: (){
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const PatientDBNavScreen()),
                     );
                   } ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
