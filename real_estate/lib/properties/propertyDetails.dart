import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/common/bottom_nav_bar.dart';
import 'package:real_estate/common/custom_appbar.dart';

class PropertyDetails extends StatefulWidget {
  const PropertyDetails({super.key});

  @override
  State<PropertyDetails> createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
  bool isExpanded = false;
  Map<String, dynamic> mapData = {
    "Property Details": {
      "Property Name": "2BHK Apartment with Sea View.",
      "Size": "1200 sq. ft.",
      "Price": "₹75,00,000",
      "Location": "Premium Residential Area",
      "Builder": "Renowned Developer",
      "Furnishing": "Semi-Furnished",
    },
    "Property Features": {
      "Floor": "8th out of 15.",
      "Balcony": "2 Spacious Balconies.",
      "Bedrooms": "2",
      "Parking": "1 Covered Parking",
    },
    "Amenities": {
      "Amenities":
          "Swimming Pool | Gym | Parking | CCTV Security | Garden | Kids Play Area",
      "Possession": "Ready to Move",
      "Loan Facility": "Available",
    },
  };

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 245, 248, 1),
      appBar: CustomAppBar(
        title: "Property Details",
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/png/urban-city-architecture 2.png",
                      // height: 300,
                      // width: 400
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            "2BHK Apartment",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: const Color.fromRGBO(8, 47, 84, 1),
                            ),
                          ),
                        ),
                        // Spacer(),
                        Flexible(
                          child: Text(
                            "₹75,00,000",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: const Color.fromRGBO(2, 111, 216, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 14,
                          color: Color.fromRGBO(110, 123, 134, 1),
                        ),
                        // SizedBox(width: screenWidth * 0.02),
                        Flexible(
                          child: Text(
                            "Prime Beach Apartments , Mumbai",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: const Color.fromRGBO(110, 123, 134, 1),
                            ),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.02),

                        // Spacer(),
                        Text(
                          "(2000sqft)",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: const Color.fromRGBO(110, 123, 134, 1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Row(
                      children: [
                        Icon(
                          Icons.airline_seat_flat_rounded,
                          color: Color.fromRGBO(40, 126, 209, 1),
                          size: screenWidth * 0.045,
                        ),
                        SizedBox(width: screenWidth * 0.01),
                        Text(
                          "4 Bed",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromRGBO(110, 123, 134, 1),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.bathtub,
                          size: 20.02,
                          color: Color.fromRGBO(40, 126, 209, 1),
                        ),
                        SizedBox(width: screenWidth * 0.01),
                        Text(
                          "3 Bath ",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromRGBO(110, 123, 134, 1),
                          ),
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          "assets/svg/chefIcon.svg",
                          height: screenWidth * 0.035,
                        ),
                        SizedBox(width: screenWidth * 0.01),
                        Text(
                          "1 Kitchen",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromRGBO(110, 123, 134, 1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.025),
                    Text(
                      "Enjoy luxury living in this 2BHK sea-facing apartment with breathtaking ocean views. Spanning 1200 sq. ft., it features spacious bedrooms, a bright living area, a modular kitchen, and premium interiors. The private balcony offers a serene retreat, while top amenities like a pool, gym, and 24/7 security enhance comfort and convenience. Located in a prime area, it offers easy access to shopping, dining, and transportation.",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color.fromRGBO(110, 123, 134, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder:
                      (context, index) =>
                          Divider(color: Color.fromRGBO(210, 222, 233, 1)),
                  itemCount: mapData.length,
                  itemBuilder: (context, index) {
                    String sectionTitle = mapData.keys.elementAt(index);
                    Map<String, dynamic> sectionData = mapData[sectionTitle];

                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 20),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isExpanded = !isExpanded;
                              });
                            },
                            child: Row(
                              children: [
                                Text(
                                  sectionTitle,
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: const Color.fromRGBO(14, 39, 63, 1),
                                  ),
                                ),
                                Spacer(),
                                const Icon(
                                  Icons.expand_more_outlined,
                                  color: Color.fromRGBO(14, 39, 63, 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (isExpanded) ...[
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                                  sectionData.entries.map((entry) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 4.0,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // Center(
                                          //   child: Container(
                                          //     margin: EdgeInsets.only(right: 5),
                                          //     width: screenWidth*0.008,
                                          //     height: screenHeight*0.008,
                                          //     decoration: const BoxDecoration(
                                          //       shape: BoxShape.circle,
                                          //       color: Color.fromRGBO(34, 85, 134, 1)
                                          //     ),
                                          //   ),
                                          // ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 4,
                                              left: 2,
                                            ),
                                            child: Icon(
                                              Icons.circle,
                                              color: Color.fromRGBO(
                                                34,
                                                85,
                                                134,
                                                1,
                                              ),
                                              size: screenWidth * 0.015,
                                            ),
                                          ),
                                          SizedBox(width: screenWidth * 0.02),
                                          Text(
                                            "${entry.key} ",
                                            style: GoogleFonts.dmSans(
                                              color: Color.fromRGBO(
                                                34,
                                                85,
                                                134,
                                                1,
                                              ),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              " : ${entry.value}",
                                              style: GoogleFonts.dmSans(
                                                color: Color.fromRGBO(
                                                  92,
                                                  106,
                                                  119,
                                                  1,
                                                ),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          // Text(
                                          //   "${entry.key}: ${entry.value}",
                                          //   style: TextStyle(fontSize: 5),
                                          // ),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                            ),
                          ),
                        ],
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 2),
    );
  }
}
