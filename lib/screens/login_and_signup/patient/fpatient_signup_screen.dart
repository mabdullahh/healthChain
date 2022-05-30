import 'package:flutter/material.dart';

import '../../../widgets/rounded_button.dart';
import '../../../widgets/rounded_input.dart';
import '../../../widgets/rounded_password_input.dart';


// ignore: must_be_immutable
class PatientSignupScreen extends StatelessWidget {
  PatientSignupScreen({Key? key}) : super(key: key);
  var usernameTEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
                width: double.infinity,
              ),

              const Text(
                'Welcome',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),

              const SizedBox(height: 40),

              // SvgPicture.asset('assets/images/register.svg'),
              Image.asset(
                'assets/vectors/076.png',
                height: MediaQuery.of(context).size.height * 0.25,
              ),

              const SizedBox(height: 40),

              RoundedInput(
                icon: Icons.mail,
                hint: 'Username',
                controller: usernameTEC,
              ),

              RoundedInput(
                icon: Icons.face_rounded,
                hint: 'Name',
                controller: usernameTEC,
              ),

              RoundedPasswordInput(
                hint: 'Password',
                controller: usernameTEC,
              ),
              RoundedPasswordInput(
                hint: 'Confirm Password',
                controller: usernameTEC,
              ),
              RoundedInput(
                icon: Icons.male_outlined,
                hint: 'Gender',
                controller: usernameTEC,
              ),
              RoundedInput(
                icon: Icons.calendar_today_outlined,
                hint: 'DOB',
                controller: usernameTEC,
              ),
              RoundedInput(
                icon: Icons.pin_outlined,
                hint: 'CNIC',
                controller: usernameTEC,
              ),
              RoundedInput(
                icon: Icons.phone_iphone_outlined,
                hint: 'Phone number',
                controller: usernameTEC,
              ),

              const SizedBox(height: 10),

              RoundedButton(title: 'SIGN UP', onTap: () {}),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
