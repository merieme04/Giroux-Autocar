import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bouten extends StatefulWidget {
  Bouten({Key? key, required this.chose}) : super(key: key);
  IconData chose;

  @override
  State<Bouten> createState() => _BoutenState();
}

class _BoutenState extends State<Bouten> {
  bool passenable = true;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (passenable) {
            passenable = false;
          } else
            passenable = true;
        });
      },
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        side: MaterialStatePropertyAll(
          BorderSide(color: Colors.black45),
        ),
        elevation: MaterialStatePropertyAll(0),
        backgroundColor: MaterialStatePropertyAll(
          Colors.transparent,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 80,
            ),
            child: Icon(
              (passenable == false)
                  ? Icons.check_box_rounded
                  : Icons.check_box_outline_blank,
              color: Colors.black,
            ),
          ),
          Icon(
            this.widget.chose,
            size: 40,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              "Car",
              style: GoogleFonts.inter(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
