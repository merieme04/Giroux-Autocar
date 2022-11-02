import 'package:flutter/material.dart';
import 'package:giroux_autocar/component/constricteuronboarding.dart';
import 'package:onboarding/onboarding.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    controller = TabController(
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int position = 0;
    double p = 0;
    return Scaffold(
      body: Stack(
        children: [
          TabBarView(
            controller: controller,
            children: [
              NewOnboarding(
                image: "assets/Onboarding1.png",
                p: 1,
              ),
              NewOnboarding(
                image: "assets/Onboarding2.png",
                l: 40,
                p: 2,
              ),
              NewOnboarding(
                image: "assets/Onboarding3.png",
                t: 17,
                p: 3,
              ),
            ],
          ),
          Positioned(
            top: 620,left: 25,
            child: TabPageSelector(
              controller: controller,
              selectedColor: Color(0xffF7A538),
            indicatorSize: 15,),
          )
        ],
      ),
    );
  }
}
