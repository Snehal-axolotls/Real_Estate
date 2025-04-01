import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/common/bottom_nav_bar.dart';
import 'package:real_estate/common/custom_appbar.dart';
import 'package:real_estate/common/custom_button.dart';
import 'package:real_estate/common/custom_text.dart';
import 'package:real_estate/common/filterDrawer.dart';
import 'package:real_estate/model/property_model.dart';
import 'package:real_estate/properties/propertyDetails.dart';

class Property extends StatefulWidget {
  const Property({super.key});

  @override
  State<Property> createState() => _PropertyState();
}

class _PropertyState extends State<Property> {
  String searchQuery = "";

  List<PropertyModel> properties = [
    PropertyModel(
      imageUrl: "assets/png/urban-city-architecture 1.png",
      title: "2BHK Apartment, Sea View",
      location: "Prime Beach Apartments, Mumbai",
      area: 2000,
      bedrooms: 4,
      bathrooms: 3,
      parkings: 1,
      price: "₹75,00,000",
    ),
    PropertyModel(
      imageUrl: "assets/png/urban-city-architecture 1.png",
      title: "2BHK Apartment, Sea View",
      location: "Prime Beach Apartments, Mumbai",
      area: 2000,
      bedrooms: 4,
      bathrooms: 3,
      parkings: 1,
      price: "₹75,00,000",
    ),
    PropertyModel(
      imageUrl: "assets/png/urban-city-architecture 1.png",
      title: "2BHK Apartment, Sea View",
      location: "Prime Beach Apartments, Mumbai",
      area: 2000,
      bedrooms: 4,
      bathrooms: 3,
      parkings: 1,
      price: "₹75,00,000",
    ),
    PropertyModel(
      imageUrl: "assets/png/urban-city-architecture 1.png",
      title: "2BHK Apartment, Sea View",
      location: "Prime Beach Apartments, Mumbai",
      area: 2000,
      bedrooms: 4,
      bathrooms: 3,
      parkings: 1,
      price: "₹75,00,000",
    ),
    PropertyModel(
      imageUrl: "assets/png/urban-city-architecture 1.png",
      title: "2BHK Apartment, Sea View",
      location: "Prime Beach Apartments, Mumbai",
      area: 2000,
      bedrooms: 4,
      bathrooms: 3,
      parkings: 1,
      price: "₹75,00,000",
    ),
    PropertyModel(
      imageUrl: "assets/png/urban-city-architecture 1.png",
      title:
          "2BHK Apartment, Sea View2BHK Apartment, Sea View2BHK Apartment, Sea View2BHK Apartment, Sea View",
      location: "Prime Beach Apartments, Mumbai",
      area: 2000,
      bedrooms: 4,
      bathrooms: 3,
      parkings: 1,
      price: "₹75,00,000",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;
        TextScaler textScaler = MediaQuery.textScalerOf(context);

        return Scaffold(
          backgroundColor: Color.fromRGBO(242, 245, 248, 1),
          appBar: CustomAppBar(title: "Properties"),
          drawer: FilterDrawer(),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    /// SEARCH BAR
                    Expanded(
                      flex:
                          screenWidth > 600
                              ? 5
                              : 6, // Adjusts based on screen size
                      child: Container(
                        height: screenHeight * 0.06,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            // SizedBox(width: screenWidth * 0.02),
                            // SvgPicture.asset(
                            //   "assets/svg/search-normal.svg",
                            //   height: screenHeight * 0.03,
                            // ),
                            // SizedBox(width: screenWidth * 0.02),
                            Expanded(
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {
                                    searchQuery = value;
                                  });
                                },
                                style: GoogleFonts.dmSans(
                                  // fontSize: screenWidth * 0.035,
                                ),
                                decoration: InputDecoration(
                                  hintText: "Search",
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Color.fromRGBO(21, 95, 165, 1),
                                  ),
                                  hintStyle: GoogleFonts.dmSans(
                                    // fontSize: screenWidth * 0.032,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(
                                      159,
                                      171,
                                      183,
                                      1,
                                    ),
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.02),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: screenWidth * 0.015), // Small gap
                    /// FILTER BUTTON
                    Builder(
                      builder: (context) {
                        return Expanded(
                          flex:
                              screenWidth > 600
                                  ? 2
                                  : 3, // Adjust based on screen size
                          child: GestureDetector(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            child: Container(
                              height: screenHeight * 0.06,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(228, 237, 247, 1),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/svg/filter.svg",
                                    height: screenHeight * 0.025,
                                  ),
                                  SizedBox(width: screenWidth * 0.015),
                                  CustomText(
                                    text : "Filter",
                                      fontWeight: FontWeight.w500,
                                      // fontSize: screenWidth * 0.035,
                                      color: const Color.fromRGBO(
                                        33,
                                        97,
                                        158,
                                        1,
                                      
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),

                Flexible(
                  child: ListView.builder(
                    itemCount: properties.length,
                    itemBuilder: (context, index) {
                      final property = properties[index];
                      return Container(
                        padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.025,
                        ),
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.02,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.09),
                              offset: Offset(0.0, 4.0),
                              blurRadius: 4.0,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // Prevents row overflow
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset(
                                property.imageUrl,
                                // width: MediaQuery.of(context).size.width * 0.25,
                                // height:
                                //     MediaQuery.of(context).size.height * 0.15,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ), // Spacing
                            Expanded(
                              // Prevents overflow
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text : "${property.title}",
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                      fontSize: textScaler.scale(14),
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 47, 84, 1),
                                    
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Color.fromRGBO(110, 123, 134, 1),
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                            0.01,
                                      ),
                                      Expanded(
                                        // Prevents overflow
                                        child: CustomText(
                                          text : property.location,
                                          softWrap: true,
                                          overflow: TextOverflow.ellipsis,
                                            fontSize: textScaler.scale(14),
                                            color: Color.fromRGBO(
                                              110,
                                              123,
                                              134,
                                              1,
                                            ),
                                            fontWeight: FontWeight.w500,
                                          
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  Wrap(
                                    // Ensures items wrap instead of overflowing
                                    spacing:
                                        MediaQuery.of(context).size.width *
                                        0.03,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/svg/area.svg",
                                            // height:
                                            //     MediaQuery.of(
                                            //       context,
                                            //     ).size.width *
                                            //     0.035,
                                          ),
                                          SizedBox(
                                            width:
                                                MediaQuery.of(
                                                  context,
                                                ).size.width *
                                                0.01,
                                          ),
                                          CustomText(
                                            text : "${property.area}",
                                              fontSize: textScaler.scale(12),
                                              color: Color.fromRGBO(
                                                110,
                                                123,
                                                134,
                                                1,
                                              ),
                                              fontWeight: FontWeight.w500,
                                            
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.airline_seat_flat_rounded,
                                            color: Color.fromRGBO(
                                              40,
                                              126,
                                              209,
                                              1,
                                            ),
                                            // size:
                                            //     MediaQuery.of(
                                            //       context,
                                            //     ).size.width *
                                            //     0.035,
                                          ),
                                          SizedBox(
                                            width:
                                                MediaQuery.of(
                                                  context,
                                                ).size.width *
                                                0.01,
                                          ),
                                          CustomText(
                                            text : "${property.bedrooms}",
                                              fontSize: textScaler.scale(12),
                                              color: Color.fromRGBO(
                                                110,
                                                123,
                                                134,
                                                1,
                                              ),
                                              fontWeight: FontWeight.w500,
                                            
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.bathtub_rounded,
                                            color: Color.fromRGBO(
                                              40,
                                              126,
                                              209,
                                              1,
                                            ),
                                            size: 14,
                                          ),
                                          SizedBox(
                                            width:
                                                MediaQuery.of(
                                                  context,
                                                ).size.width *
                                                0.01,
                                          ),
                                          CustomText(
                                            text : "${property.bathrooms}",
                                              fontSize: textScaler.scale(12),
                                              color: Color.fromRGBO(
                                                110,
                                                123,
                                                134,
                                                1,
                                              ),
                                              fontWeight: FontWeight.w500,
                                            
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/svg/chefIcon.svg",
                                            // height:
                                            //     MediaQuery.of(
                                            //       context,
                                            //     ).size.width *
                                            //     0.035,
                                          ),
                                          SizedBox(
                                            width:
                                                MediaQuery.of(
                                                  context,
                                                ).size.width *
                                                0.01,
                                          ),
                                          CustomText(
                                            text : "${property.parkings}",
                                              fontSize: textScaler.scale(12),
                                              color: Color.fromRGBO(
                                                110,
                                                123,
                                                134,
                                                1,
                                              ),
                                              fontWeight: FontWeight.w500,
                                            
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        text : property.price,
                                        overflow: TextOverflow.ellipsis,
                                          fontSize: textScaler.scale(18),
                                          color: Color.fromRGBO(8, 47, 84, 1),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      

                                      ///VIEW DETAILS
                                      CustomButton(
                                        text: "View Details",
                                        height: 25,
                                        width: 75,
                                        color: const Color.fromRGBO(
                                          232,
                                          243,
                                          253,
                                          1,
                                        ),
                                        fontColor: const Color.fromRGBO(
                                          9,
                                          67,
                                          124,
                                          1,
                                        ),
                                        borderRadius: 9,
                                        fontSize: textScaler.scale(8.0),
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder:
                                                  (context) =>
                                                      PropertyDetails(),
                                            ),
                                          );
                                        },
                                      ),
                                    
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: CustomBottomNavBar(selectedIndex: 2),
        );
      },
    );
  }
}
