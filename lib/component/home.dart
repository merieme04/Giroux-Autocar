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
          preferredSize: Size.fromHeight(135),
          child: Padding(
            padding: EdgeInsets.only(bottom: 90),
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
        ),
        flexibleSpace: Image(
          image: AssetImage('assets/appbarimage.png'),
          fit: BoxFit.cover,
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
        children: [ListTile()],
      ),
    );
  }
}
