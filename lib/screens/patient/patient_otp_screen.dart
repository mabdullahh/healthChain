import 'package:flutter/material.dart';
import 'dart:math';

import '../../constants.dart';
import '../../widgets/rounded_button.dart';
import '../../widgets/rounded_input.dart';

class PatientOtp extends StatefulWidget {
  const PatientOtp({Key? key}) : super(key: key);

  @override
  State<PatientOtp> createState() => _PatientOtpState();
}

class _PatientOtpState extends State<PatientOtp> {
  @override
  Widget build(BuildContext context) {
    int generateOtp() {
      Random random = Random();
      int randomNumber = random.nextInt(900000) + 100000;

      return randomNumber;
    }


    return Scaffold(
      appBar: AppBar(
        title: const Text('Patient Otp'),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Generate your one-time password and show it to your doctor',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // RoundedInput(
                  //     icon: Icons.pin_outlined, hint: generateOtp().toString()),
                  const SizedBox(
                    height: 15,
                  ),
                  RoundedButton(
                    title: 'Generate Otp',
                    onTap: (){
                      setState( () {


                      } ) ;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
