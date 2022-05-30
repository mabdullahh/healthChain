// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_chain/screens/doctor/doctor_nav_screen.dart';
import 'package:http/http.dart' as http;

import '../../../utilities/constants.dart';
import '../../../utilities/snackbars.dart';
import '../../../widgets/rounded_button.dart';
import '../../../widgets/rounded_input.dart';
import '../../../widgets/rounded_password_input.dart';
import '../patient/fpatient_signup_screen.dart';

class FDoctorLoginScreen extends StatefulWidget {
  const FDoctorLoginScreen({Key? key}) : super(key: key);

  @override
  State<FDoctorLoginScreen> createState() => _FDoctorLoginScreenState();
}

class _FDoctorLoginScreenState extends State<FDoctorLoginScreen> {
  TextEditingController usernameTec = TextEditingController();

  TextEditingController passwordTec = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Welcome Back',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(height: 40),
                Image.asset(
                  'assets/vectors/034.png',
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                const SizedBox(height: 40),
                RoundedInput(
                  icon: Icons.mail,
                  hint: 'Username',
                  controller: usernameTec,
                ),
                RoundedPasswordInput(
                  hint: 'Password',
                  controller: passwordTec,
                ),
                const SizedBox(height: 10),
                RoundedButton(
                    title: 'LOGIN',
                    onTap: () {
                      login();
                    }),
                const SizedBox(height: 40),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      CupertinoModalPopupRoute(builder: (context) =>  PatientSignupScreen()),
                    );

                  },
                  child: const Text(
                    "Don't have an account? Sign up",
                    style: TextStyle(color: kPrimaryColor, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> login() async {
    if (usernameTec.text.isNotEmpty && passwordTec.text.isNotEmpty) {
      var response = await http.post(
        Uri.parse('http://10.0.2.2:8000/api/auth/'),
        body: jsonEncode(
            {'username': usernameTec.text, 'password': passwordTec.text}),
        headers: {
          "Accept": "application/json",
          "content-type": "application/json"
        },
      );
      if (response.statusCode == 200) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const DoctorNavScreen()),

        );

        ScaffoldMessenger.of(context).showSnackBar(CustomSnackbar.successSnackBar);
        print(jsonDecode(response.body));
      } else {

        ScaffoldMessenger.of(context).showSnackBar(CustomSnackbar.failureSnackBar);
      }
    } else {

      ScaffoldMessenger.of(context).showSnackBar(CustomSnackbar.warningSnackBar);
    }
  }
}
