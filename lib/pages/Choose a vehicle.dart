import 'package:flutter/material.dart';
import 'package:giroux_autocar/pages/Login.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/buton.dart';

class ChooseVehicle extends StatelessWidget {
  const ChooseVehicle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Positioned(
            top: 440,
            left: 60,
            child: SizedBox(
              width: 130,
              height: 130,
              child: Bouten(chose: Icons.car_repair,),
            ),
          ),
          Positioned(
            top: 440,
            left: 225,
            child: SizedBox(
              width: 130,
              height: 130,
              child: Bouten(chose: Icons.bike_scooter,),
            ),
          ),
          Positioned(
            top: 600,
            left: 330,
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
                      builder: (context) => Login(),
                    ),
                  );
                },
                child: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
          ),
        ],
      ),
    );
  }
}






