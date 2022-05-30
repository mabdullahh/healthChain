import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class CardPlanetData {
  final String title;
  final String subtitle;
  final String animation;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;


  CardPlanetData({
    required this.title,
    required this.subtitle,
    required this.animation,
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,

  });
}

class CardPlanet extends StatelessWidget {
  const CardPlanet({
    required this.data,
    Key? key,
  }) : super(key: key);

  final CardPlanetData data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 3),
              Flexible(
                flex: 20,
                child: LottieBuilder.asset(data.animation,frameRate: FrameRate(120),width: MediaQuery.of(context).size.width),
              ),
              const Spacer(flex: 1),
              Text(
                data.title.toUpperCase(),
                style: TextStyle(
                  color: data.titleColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                maxLines: 1,
              ),
              const Spacer(flex: 1),
              Text(
                data.subtitle,
                style: TextStyle(
                  color: data.subtitleColor,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              const Spacer(flex: 10),
            ],
          ),
        ),
      ],
    );
  }
}