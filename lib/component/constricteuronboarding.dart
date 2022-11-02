import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding/onboarding.dart';

import '../pages/Choose a vehicle.dart';

class NewOnboarding extends StatelessWidget {
  NewOnboarding(
      {Key? key,
      required this.image,
      this.t: 55,
      this.l: 0,
      this.p: 0,})
      : super(key: key);
  String image;
  double l, t;
  int p;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          (p == 3)
              ? Positioned(
            top: 610,
            left: 310,
            child: SizedBox(
              width: 60,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(6),
                  backgroundColor: MaterialStatePropertyAll(
                    Color(0xffF7A538),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ChooseVehicle(),
                    ),
                  );
                },
                child: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
          )
              : Container(),
          Positioned(
            top: t,
            left: l,
            child: Image(
              image: AssetImage(image),
            ),
          ),
          Positioned(
            top: 470,
            left: 20,
            child: Text(
              "Discover service \nnear you ",
              style: GoogleFonts.inter(
                  fontSize: 29, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 550,
            left: 20,
            child: Text(
              "Discover service near you lorem ipsum dolor\nis amet  near you lorem  ",
              style: GoogleFonts.inter(
                  fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),

        ],
      ),
    );
  }
}
