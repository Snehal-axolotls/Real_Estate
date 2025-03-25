import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/common/bottom_nav_bar.dart';

class NoLead extends StatelessWidget {
  const NoLead({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(242, 245, 248, 1),
      appBar: AppBar(
        title: Text(
          "My Assigned Leads",
          style: GoogleFonts.dmSans(
              fontWeight: FontWeight.w600, fontSize: 19, color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(14, 39, 63, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:60.0),
              child: Text(
                "No Leads Assigned Yet !",
                style: GoogleFonts.dmSans(
                  color: Color.fromRGBO(47, 111, 172, 1),
                  fontSize: MediaQuery.of(context).size.width*0.06,
                  fontWeight: FontWeight.w600
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:50.0),
              child: SvgPicture.asset(
                "assets/svg/no lead.svg",
                height: 250,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.7,
              child: Text(
                "start following up once leads are assigned to you.",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  color: Color.fromRGBO(146, 160, 173, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: MediaQuery.of(context).size.width*0.04
                )
              ),
            )
          ]
        ),
      ),
      // bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}