import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';


import 'package:health_chain/screens/login_and_signup/login_and_signup.dart';

import '../utilities/assets.dart';
import '../utilities/constants.dart';
import '../widgets/onboarding_widget.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);

  final data = [
    CardPlanetData(
      title: "HealthChain",
      subtitle: "Find health services near you",
      backgroundColor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Colors.pink,
      subtitleColor: Colors.white,
      animation: Assets.one,
    ),
    CardPlanetData(
      title: "Imagine",
      subtitle: "Its not just your data, Its your life",
      backgroundColor: Colors.white,
      titleColor: Colors.purple,
      subtitleColor: const Color.fromRGBO(0, 10, 56, 1),
      animation: Assets.two,
    ),
    CardPlanetData(
      title: "Decentralized",
      subtitle: "Keep you health record secure",
      backgroundColor: const Color.fromRGBO(71, 59, 117, 1),
      titleColor: Colors.yellow,
      subtitleColor: Colors.white,
      animation: Assets.three,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return CardPlanet(data: data[index]);
        },
        nextButtonBuilder: (BuildContext context) {
          return const Icon(Icons.arrow_forward_ios_rounded,color: kPrimaryColor,);
        },
        radius: 30,
        onFinish: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginAndSignup()),
          );
        },
      ),
    );
  }
}
