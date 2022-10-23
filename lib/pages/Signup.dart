import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkable/linkable.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Login.dart';
import '../component/form_login.dart';
import '../component/from_signup.dart';


class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 75,
            left: 150,
            child: Text(
              "Sign Up",
              style: GoogleFonts.inter(
                  fontSize: 29, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 125,
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
            top: 180,
            left: 25,
            width: 360,
            child: FormSignup(),
          ),
          Positioned(
            top: 515,
            left: 60,
            child: Row(children: [
              Text(
                "Already have an account?",
                style: GoogleFonts.inter(color: Colors.black38, fontSize: 18),
              ),
              ElevatedButton(
                child: Text(
                  "Login",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    color: Color(0xffF7A538),

                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Login(),
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
            top: 557,
            left: 90,
            child: Text(
              "Sign In with social media",
              style: GoogleFonts.inter(color: Colors.black38, fontSize: 18),
            ),
          ),
          Positioned(
            top: 590,
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
            top: 590,
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
            top: 590,
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
