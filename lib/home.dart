import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(35),
          child: SizedBox(
            width: 350,
            height: 50,
            child: TextField(
              style: GoogleFonts.inter(color: Colors.black87),
              decoration: const InputDecoration(
                fillColor: Color(0xffffffff),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                hintText: "Search service",
                prefixIcon: Icon(
                  Icons.search,
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text(
            "Home",
            style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.add_alert_rounded,
              size: 28,
            ),
          )
        ],
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 430,
            child: SizedBox(
              width: 450,
              child: Image(
                image: AssetImage('assets/appbarimage.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Flexible(
                flex: 3,
                child: ListView(
                  padding: EdgeInsets.only(top: 12, bottom: 5),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          width: 300,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 8,
                                left: 100,
                                child: Image(
                                  image: AssetImage("assets/GetServices1.png"),
                                ),
                              ),
                              Positioned(
                                top: 13,
                                left: 15,
                                child: Text(
                                  "Get\nservices\nfrom Home",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          width: 300,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 130,
                                top: 0.001,
                                bottom: 0.001,
                                child: Image(
                                  image: AssetImage("assets/Getservices2.png"),
                                ),
                              ),
                              Positioned(
                                top: 13,
                                left: 15,
                                child: Text(
                                  "Get\nservices\nfrom Home",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 10, top: 10, left: 25.0, right: 220),
                    child: Text(
                      "Near you",
                      style: GoogleFonts.inter(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    child: Text(
                      "See all",
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        color: Color(0xffF7A538),
                      ),
                    ),
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: MaterialStatePropertyAll(0),
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(
                flex: 7,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 15, right: 10),
                      child: CardService(
                        text: "Gotham Car Reparation",
                        image: 'assets/car.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 15, right: 10),
                      child: CardService(
                        text: "Gotham auto moto",
                        image: 'assets/moto.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child: CardService(
                        text: "Gotham Car Reparation",
                        image: 'assets/car.png',
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

class CardService extends StatelessWidget {
  CardService(
      {Key? key, required this.image, required this.text})
      : super(key: key);
  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        width: 40,
        height: 85,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                child: Center(
                  child: Image(
                    image: AssetImage(image),
                  ),
                ),
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: Color(0xffF7A538),
                  borderRadius: BorderRadius.all(
                    Radius.circular(7.0),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 5),
                        child: Icon(
                          Icons.access_time_filled,
                          color: Color(0xffF7A538),
                          size: 17,
                        ),
                      ),
                      Text(
                        "8 am - 5pm",
                        style: GoogleFonts.inter(
                            fontSize: 15, color: Colors.black54),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 115,
                          right: 4,
                        ),
                        child: Icon(
                          Icons.star,
                          color: Color(0xffF7A538),
                          size: 18,
                        ),
                      ),
                      Text(
                        "4.5",
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          color: Color(0xffF7A538),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Row(
                    children: [
                      Text(
                        text,
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "House 57, Road 8, Block A, Brimingham",
                      style: GoogleFonts.inter(
                          color: Colors.black54, fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
