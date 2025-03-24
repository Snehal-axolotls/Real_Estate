import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/bottom_nav_bar.dart';

class Property extends StatefulWidget {
  const Property({super.key});

  @override
  State<Property> createState() => _PropertyState();
}

class _PropertyState extends State<Property> {
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;

        return Scaffold(
          backgroundColor: Color.fromRGBO(242, 245, 248, 1),
          appBar: AppBar(
            title: Text(
              "Properties",
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w600,
                fontSize: 19,
                color: Colors.white,
              ),
            ),
            backgroundColor: const Color.fromRGBO(14, 39, 63, 1),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed:
                  () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomBottomNavBar(),
                    ),
                    (Route<dynamic> route) => false,
                  ),
            ),
          ),

          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    ///SEARCH BAR
                    Container(
                      width: screenWidth * 0.6,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(16),
                        // border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          SvgPicture.asset("assets/svg/search-normal.svg"),
                          const SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  searchQuery = value;
                                });
                              },
                              decoration: InputDecoration(
                                hintText: "Search ",
                                hintStyle: GoogleFonts.dmSans(
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(159, 171, 183, 1),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),

                          const SizedBox(width: 10),
                        ],
                      ),
                    ),

                    ///FILTER
                    Container(
                      padding: EdgeInsets.all(11),
                      width: screenWidth * 0.3,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(228, 237, 247, 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            "assets/svg/filter.svg",
                            height: screenHeight * 0.02,
                          ),
                          Text(
                            "Filter",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: screenWidth * 0.045,
                              color: Color.fromRGBO(33, 97, 158, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
