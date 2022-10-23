import 'package:flutter/material.dart';
import 'package:giroux_autocar/component/constricteuronboarding.dart';
import 'package:onboarding/onboarding.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int position = 0;
    double p = 0;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (pos) {
              position = pos;
            },
            scrollDirection: Axis.horizontal,
            children: [
              NewOnboarding(
                image: "assets/Onboarding1.png",
                p: 1,
                ind: 0,
              ),
              NewOnboarding(
                image: "assets/Onboarding2.png",
                l: 40,
                p: 2,
                ind: 0.3,
              ),
              NewOnboarding(
                image: "assets/Onboarding3.png",
                t: 17,
                p: 3,
                ind: 0.5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
