import 'package:flutter/material.dart';
import 'package:giroux_autocar/pages/Signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkable/linkable.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import '../component/form_login.dart';
import 'Choose a vehicle.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 115,
            left: 150,
            child: Text(
              "Login",
              style: GoogleFonts.inter(
                  fontSize: 29, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 170,
            left: 20,
            child: Text(
              textAlign: TextAlign.center,
              "Welcome back,\nSign in to continue etiam tacimates sed ad",
              style: GoogleFonts.inter(
                  color: Colors.black45,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Positioned(
            top: 235,
            left: 25,
            width: 360,
            child: FormLogin(),
          ),
          Positioned(
            top: 475,
            left: 40,
            child: Row(children: [
              Text(
                "Don’t have an account?",
                style: GoogleFonts.inter(color: Colors.black38, fontSize: 18),
              ),
              ElevatedButton(
                child: Text(
                  "Create account",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    color: Color(0xffF7A538),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Signup(),
                    ),
                  );
                },
                style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(0),
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.transparent,
                  ),
                ),
              ),
            ]),
          ),
          Positioned(
            top: 528,
            left: 90,
            child: Text(
              "Login with social media",
              style: GoogleFonts.inter(color: Colors.black38, fontSize: 18),
            ),
          ),
          Positioned(
            top: 560,
            left: 230,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "t",
                style: GoogleFonts.roboto(
                    fontSize: 20,
                    color: Color(0xffF7A538),
                    fontWeight: FontWeight.w500),
              ),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                minimumSize: Size(50, 50),
                side: BorderSide(
                  color: Color(0xffF7A538),
                ),
              ),
            ),
          ),
          Positioned(
            top: 560,
            left: 165,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "f",
                style: GoogleFonts.roboto(
                    fontSize: 20,
                    color: Color(0xffF7A538),
                    fontWeight: FontWeight.w500),
              ),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                minimumSize: Size(50, 50),
                side: BorderSide(
                  color: Color(0xffF7A538),
                ),
              ),
            ),
          ),
          Positioned(
            top: 560,
            left: 100,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "G",
                style: GoogleFonts.roboto(
                    fontSize: 20,
                    color: Color(0xffF7A538),
                    fontWeight: FontWeight.w500),
              ),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                minimumSize: Size(50, 50),
                side: BorderSide(
                  color: Color(0xffF7A538),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
