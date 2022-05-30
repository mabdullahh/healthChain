import 'package:flutter/material.dart';

import '../rounded_button.dart';
import '../rounded_input.dart';
import '../rounded_password_input.dart';


class RegisterForm extends StatelessWidget {
   RegisterForm({
    Key? key,
    required this.isLogin,
    required this.animationDuration,
    required this.size,
    required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;
  var usernameTEC = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isLogin ? 0.0 : 1.0,
      duration: animationDuration * 5,
      child: Visibility(
        visible: !isLogin,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: size.width,
            height: defaultLoginSize,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  const SizedBox(height: 10),

                  const Text(
                    'Welcome',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                    ),
                  ),

                  const SizedBox(height: 40),

                  // SvgPicture.asset('assets/images/register.svg'),
                  Image.asset('assets/vectors/076.png',height: MediaQuery.of(context).size.height * 0.25,),

                  const SizedBox(height: 40),

                   RoundedInput(icon: Icons.mail, hint: 'Username',controller: usernameTEC,),

                   RoundedInput(icon: Icons.face_rounded, hint: 'Name',controller: usernameTEC,),

                  RoundedPasswordInput(hint: 'Password',controller: usernameTEC,),
                   RoundedPasswordInput(hint: 'Confirm Password',controller: usernameTEC,),
                   RoundedInput(icon: Icons.male_outlined, hint: 'Gender',controller: usernameTEC,),
                   RoundedInput(icon: Icons.calendar_today_outlined, hint: 'DOB',controller: usernameTEC,),
                   RoundedInput(icon: Icons.pin_outlined, hint: 'CNIC',controller: usernameTEC,),
                   RoundedInput(icon: Icons.phone_iphone_outlined, hint: 'Phone number',controller: usernameTEC,),

                  const SizedBox(height: 10),

                  RoundedButton(title: 'SIGN UP',onTap: (){

                  }),

                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}