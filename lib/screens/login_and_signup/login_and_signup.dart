import 'package:flutter/material.dart';
import 'package:health_chain/constants.dart';

import 'package:lottie/lottie.dart';

import '../../assets.dart';
import '../../widgets/rounded_button.dart';
import 'doctor_login_screen.dart';
import 'patient_login_screen.dart';

class LoginAndSignup extends StatelessWidget {
  const LoginAndSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'HealthChain',
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                LottieBuilder.asset(Assets.loginandsign,
                    frameRate: FrameRate(144), height: 300),
                const SizedBox(
                  height: 20,
                ),
                RoundedButton(title: 'Login or Signup as a Patient',onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PatientLoginScreen()),
                  );
                }),
                const SizedBox(
                  height: 20,
                ),
                RoundedButton(title: 'Login or Signup as a Doctor',onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DoctorLoginScreen()),
                  );
                }),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
