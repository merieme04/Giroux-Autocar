import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding/onboarding.dart';

class NewOnboarding extends StatelessWidget {
  NewOnboarding(
      {Key? key,
      required this.image,
      this.t: 55,
      this.l: 0,
      this.p: 0,
      required this.ind})
      : super(key: key);
  String image;
  double l, t, ind;
  int p;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                        onPressed: () {},
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
            Positioned(
              top: 630,
              left: 40,
              child: CustomIndicator(
                netDragPercent: ind,
                pagesLength: 3,
                indicator: Indicator(
                  activeIndicator:
                  ActiveIndicator(color: Colors.grey, borderWidth: 1.5),
                  closedIndicator: ClosedIndicator(
                    color: Color(0xffF7A538),
                  ),
                  indicatorDesign: IndicatorDesign.polygon(
                    polygonDesign: PolygonDesign(
                      polygon: DesignType.polygon_circle,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
