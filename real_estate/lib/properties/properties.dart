import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/common/bottom_nav_bar.dart';
import 'package:real_estate/common/filterDrawer.dart';
import 'package:real_estate/dashboard/dashboard.dart';
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
      title: "2BHK Apartment, Sea View",
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
                    MaterialPageRoute(builder: (context) => DashBoard()),
                    (Route<dynamic> route) => false,
                  ),
            ),
          ),
          drawer: FilterDrawer(),
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
                      height: screenHeight * 0.05,
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
                    Builder(
                      builder: (context) {
                        return GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: Container(
                            padding: EdgeInsets.all(11),
                            width: screenWidth * 0.3,
                            height: screenHeight * 0.05,
                          
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
                        );
                      }
                    ),
                  ],
                ),

                Expanded(
                  child: ListView.builder(
                    itemCount: properties.length,
                    itemBuilder: (context, index) {
                      final property = properties[index];
                      return Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.09),
                              offset: const Offset(0.0, 4.0),
                              blurRadius: 4.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              // height: screenHeight*0.25,
                              // width: screenWidth * 0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset(property.imageUrl)
                              // SvgPicture.asset("assets/svg/urban-city-architecture 1.svg")
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${property.title}",
                                    style: GoogleFonts.dmSans(
                                      fontSize: screenWidth * 0.04,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 47, 84, 1),
                                    ),
                                  ),
                                  SizedBox(height: screenHeight * 0.01),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Color.fromRGBO(110, 123, 134, 1),
                                        size: screenWidth * 0.04,
                                      ),
                                      Text(
                                        "${property.location}",
                                        style: GoogleFonts.dmSans(
                                          fontSize: screenWidth * 0.03,
                                          color: Color.fromRGBO(110, 123, 134, 1),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: screenHeight * 0.01),
                              
                                  Row(
                                    children: [
                                      SvgPicture.asset("assets/svg/area.svg",height:screenWidth*0.035,),
                                      SizedBox(width: screenWidth * 0.01),
                              
                                      Text(
                                        "${property.area}",
                                        style: GoogleFonts.dmSans(
                                          fontSize: screenWidth*0.035,
                                          color: Color.fromRGBO(110, 123, 134, 1),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.03),
                                      Icon(
                                        Icons.airline_seat_flat_rounded,
                                        color: Color.fromRGBO(40, 126, 209, 1),
                                        size: screenWidth*0.035,
                                      ),
                                      SizedBox(width: screenWidth * 0.01),
                              
                                      Text(
                                        "${property.bedrooms}",
                                        style: GoogleFonts.dmSans(
                                          fontSize: screenWidth*0.035,
                                          color: Color.fromRGBO(110, 123, 134, 1),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.03),
                                      Icon(
                                        Icons.bathtub_rounded,
                                        color: Color.fromRGBO(40, 126, 209, 1),
                                        size: screenWidth*0.035,
                                      ),
                                      SizedBox(width: screenWidth * 0.01),
                              
                                      Text(
                                        "${property.bathrooms}",
                                        style: GoogleFonts.dmSans(
                                          fontSize: screenWidth*0.035,
                                          color: Color.fromRGBO(110, 123, 134, 1),
                                          fontWeight: FontWeight.w500,
                              
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.03),
                              
                                      SvgPicture.asset("assets/svg/chefIcon.svg",height:screenWidth*0.035,),
                                      SizedBox(width: screenWidth * 0.01),
                              
                                      Text(
                                        "${property.parkings}",
                                        style: GoogleFonts.dmSans(
                                          fontSize: screenWidth*0.035,
                                          color: Color.fromRGBO(110, 123, 134, 1),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: screenHeight * 0.01),
                              
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        property.price,
                                        style: GoogleFonts.dmSans(
                                          fontSize: 18,
                                          color: Color.fromRGBO(8, 47, 84, 1),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.16),
                                        
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => PropertyDetails()));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(7),
                                          // width: screenWidth * 0.3,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(228, 237, 247, 1),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Text(
                                            "View Details",
                                            style: GoogleFonts.dmSans(
                                              fontWeight: FontWeight.w500,
                                              fontSize: screenWidth * 0.025,
                                              color: Color.fromRGBO(9, 67, 124, 1),
                                            ),
                                          ),
                                        ),
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
