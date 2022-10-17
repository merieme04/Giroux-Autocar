import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseVehicle extends StatelessWidget {
  const ChooseVehicle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 145,
              left: 55,
              child: Image(
                image: AssetImage("assets/vehicle.png"),
              ),
            ),
            Positioned(
              top: 330,
              left: 80,
              child: Text(
                "Chose your vehicle?",
                style: GoogleFonts.inter(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 370,
              left: 50,
              child: Text(
                textAlign: TextAlign.center,
                "Please select machine. It will help us\nto find your service faster",
                style: GoogleFonts.inter(
                  color: Colors.black45,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
