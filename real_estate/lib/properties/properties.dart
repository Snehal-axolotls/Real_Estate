// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:real_estate/common/bottom_nav_bar.dart';
// import 'package:real_estate/common/filterDrawer.dart';
// import 'package:real_estate/dashboard/dashboard.dart';
// import 'package:real_estate/model/property_model.dart';
// import 'package:real_estate/properties/propertyDetails.dart';

// class Property extends StatefulWidget {
//   const Property({super.key});

//   @override
//   State<Property> createState() => _PropertyState();
// }

// class _PropertyState extends State<Property> {
//   String searchQuery = "";

//   List<PropertyModel> properties = [
//     PropertyModel(
//       imageUrl: "assets/png/urban-city-architecture 1.png",
//       title: "2BHK Apartment, Sea View",
//       location: "Prime Beach Apartments, Mumbai",
//       area: 2000,
//       bedrooms: 4,
//       bathrooms: 3,
//       parkings: 1,
//       price: "₹75,00,000",
//     ),
//     PropertyModel(
//       imageUrl: "assets/png/urban-city-architecture 1.png",
//       title: "2BHK Apartment, Sea View",
//       location: "Prime Beach Apartments, Mumbai",
//       area: 2000,
//       bedrooms: 4,
//       bathrooms: 3,
//       parkings: 1,
//       price: "₹75,00,000",
//     ),
//     PropertyModel(
//       imageUrl: "assets/png/urban-city-architecture 1.png",
//       title: "2BHK Apartment, Sea View",
//       location: "Prime Beach Apartments, Mumbai",
//       area: 2000,
//       bedrooms: 4,
//       bathrooms: 3,
//       parkings: 1,
//       price: "₹75,00,000",
//     ),
//     PropertyModel(
//       imageUrl: "assets/png/urban-city-architecture 1.png",
//       title: "2BHK Apartment, Sea View",
//       location: "Prime Beach Apartments, Mumbai",
//       area: 2000,
//       bedrooms: 4,
//       bathrooms: 3,
//       parkings: 1,
//       price: "₹75,00,000",
//     ),
//     PropertyModel(
//       imageUrl: "assets/png/urban-city-architecture 1.png",
//       title: "2BHK Apartment, Sea View",
//       location: "Prime Beach Apartments, Mumbai",
//       area: 2000,
//       bedrooms: 4,
//       bathrooms: 3,
//       parkings: 1,
//       price: "₹75,00,000",
//     ),
//     PropertyModel(
//       imageUrl: "assets/png/urban-city-architecture 1.png",
//       title:
//           "2BHK Apartment, Sea View2BHK Apartment, Sea View2BHK Apartment, Sea View2BHK Apartment, Sea View",
//       location: "Prime Beach Apartments, Mumbai",
//       area: 2000,
//       bedrooms: 4,
//       bathrooms: 3,
//       parkings: 1,
//       price: "₹75,00,000",
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         double screenWidth = constraints.maxWidth;
//         double screenHeight = constraints.maxHeight;

//         return Scaffold(
//           backgroundColor: Color.fromRGBO(242, 245, 248, 1),
//           appBar: AppBar(
//             title: Text(
//               "Properties",
//               style: GoogleFonts.dmSans(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 19,
//                 color: Colors.white,
//               ),
//             ),
//             backgroundColor: const Color.fromRGBO(14, 39, 63, 1),
//             leading: IconButton(
//               icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
//               onPressed:
//                   () => Navigator.pushAndRemoveUntil(
//                     context,
//                     MaterialPageRoute(builder: (context) => DashBoard()),
//                     (Route<dynamic> route) => false,
//                   ),
//             ),
//           ),
//           drawer: FilterDrawer(),
//           body: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
//             child: Column(
//               children: [
                
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     /// SEARCH BAR
//                     Flexible(
//                       flex: 6, // Takes 60% of available space
//                       child: Container(
//                         height: screenHeight * 0.05,
//                         decoration: BoxDecoration(
//                           color: Color.fromRGBO(255, 255, 255, 1),
//                           borderRadius: BorderRadius.circular(16),
//                         ),
//                         child: Row(
//                           children: [
//                             const SizedBox(width: 10),
//                             SvgPicture.asset("assets/svg/search-normal.svg"),
//                             const SizedBox(width: 10),
//                             Expanded(
//                               child: TextField(
//                                 onChanged: (value) {
//                                   setState(() {
//                                     searchQuery = value;
//                                   });
//                                 },
//                                 decoration: InputDecoration(
//                                   hintText: "Search",
//                                   hintStyle: GoogleFonts.dmSans(
//                                     fontSize: screenWidth * 0.04,
//                                     fontWeight: FontWeight.w500,
//                                     color: const Color.fromRGBO(
//                                       159,
//                                       171,
//                                       183,
//                                       1,
//                                     ),
//                                   ),
//                                   border: InputBorder.none,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(width: 10),
//                           ],
//                         ),
//                       ),
//                     ),

//                     SizedBox(width: screenWidth * 0.02), // Small gap
//                     /// FILTER BUTTON
//                     Flexible(
//                       flex: 3, // Takes 30% of available space
//                       child: Builder(
//                         builder: (context) {
//                           return GestureDetector(
//                             onTap: () {
//                               Scaffold.of(context).openDrawer();
//                             },
//                             child: Container(
//                               padding: EdgeInsets.all(screenWidth * 0.02),
//                               height: screenHeight * 0.05,
//                               decoration: BoxDecoration(
//                                 color: Color.fromRGBO(228, 237, 247, 1),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   SvgPicture.asset(
//                                     "assets/svg/filter.svg",
//                                     height: screenHeight * 0.02,
//                                   ),
//                                   SizedBox(width: screenWidth * 0.02),
//                                   Text(
//                                     "Filter",
//                                     style: GoogleFonts.dmSans(
//                                       fontWeight: FontWeight.w500,
//                                       fontSize: screenWidth * 0.045,
//                                       color: Color.fromRGBO(33, 97, 158, 1),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ],
//                 ),

                
//                 Flexible(
//                   child: ListView.builder(
//                     itemCount: properties.length,
//                     itemBuilder: (context, index) {
//                       final property = properties[index];
//                       return Container(
//                         padding: EdgeInsets.all(
//                           MediaQuery.of(context).size.width * 0.025,
//                         ),
//                         margin: EdgeInsets.only(
//                           top: MediaQuery.of(context).size.height * 0.02,
//                         ),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(9),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Color.fromRGBO(0, 0, 0, 0.09),
//                               offset: Offset(0.0, 4.0),
//                               blurRadius: 4.0,
//                               spreadRadius: 0.0,
//                             ),
//                           ],
//                         ),
//                         child: Row(
//                           children: [
//                             Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(9),
//                               ),
//                               clipBehavior: Clip.antiAlias,
//                               child: Image.asset(
//                                 property.imageUrl,
//                                 width: MediaQuery.of(context).size.width * 0.25,
//                                 height:
//                                     MediaQuery.of(context).size.height * 0.15,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(
//                                 left: MediaQuery.of(context).size.width * 0.02,
//                               ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   FittedBox(
//                                     fit: BoxFit.scaleDown,
//                                     child: Text(
//                                       "${property.title}",
//                                       softWrap: true,
//                                       overflow: TextOverflow.ellipsis,
                                    
//                                       style: GoogleFonts.dmSans(
//                                         fontSize:
//                                             MediaQuery.of(context).size.width *
//                                             0.04,
//                                         fontWeight: FontWeight.w500,
//                                         color: Color.fromRGBO(8, 47, 84, 1),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height:
//                                         MediaQuery.of(context).size.height *
//                                         0.01,
//                                   ),
//                                   Row(
                                    
//                                     children: [
//                                       Icon(
//                                         Icons.location_on,
//                                         color: Color.fromRGBO(110, 123, 134, 1),
//                                         size:
//                                             MediaQuery.of(context).size.width *
//                                             0.04,
//                                       ),
//                                       SizedBox(
//                                         width:
//                                             MediaQuery.of(context).size.width *
//                                             0.01,
//                                       ),
//                                       FittedBox(
//                                         fit: BoxFit.scaleDown,
//                                         child: Text(
//                                           "${property.location}",
//                                           softWrap: true,
//                                           overflow: TextOverflow.ellipsis,
                                        
//                                           textAlign: TextAlign.center,
//                                           style: GoogleFonts.dmSans(
//                                             fontSize:
//                                                 MediaQuery.of(
//                                                   context,
//                                                 ).size.width *
//                                                 0.03,
//                                             color: Color.fromRGBO(
//                                               110,
//                                               123,
//                                               134,
//                                               1,
//                                             ),
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     height:
//                                         MediaQuery.of(context).size.height *
//                                         0.01,
//                                   ),
//                                   Row(
//                                     children: [
//                                       SvgPicture.asset(
//                                         "assets/svg/area.svg",
//                                         height:
//                                             MediaQuery.of(context).size.width *
//                                             0.035,
//                                       ),
//                                       SizedBox(
//                                         width:
//                                             MediaQuery.of(context).size.width *
//                                             0.01,
//                                       ),
//                                       Text(
//                                         "${property.area}",
//                                         style: GoogleFonts.dmSans(
//                                           fontSize:
//                                               MediaQuery.of(
//                                                 context,
//                                               ).size.width *
//                                               0.035,
//                                           color: Color.fromRGBO(
//                                             110,
//                                             123,
//                                             134,
//                                             1,
//                                           ),
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width:
//                                             MediaQuery.of(context).size.width *
//                                             0.03,
//                                       ),
//                                       Icon(
//                                         Icons.airline_seat_flat_rounded,
//                                         color: Color.fromRGBO(40, 126, 209, 1),
//                                         size:
//                                             MediaQuery.of(context).size.width *
//                                             0.035,
//                                       ),
//                                       SizedBox(
//                                         width:
//                                             MediaQuery.of(context).size.width *
//                                             0.01,
//                                       ),
//                                       Text(
//                                         "${property.bedrooms}",
//                                         style: GoogleFonts.dmSans(
//                                           fontSize:
//                                               MediaQuery.of(
//                                                 context,
//                                               ).size.width *
//                                               0.035,
//                                           color: Color.fromRGBO(
//                                             110,
//                                             123,
//                                             134,
//                                             1,
//                                           ),
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width:
//                                             MediaQuery.of(context).size.width *
//                                             0.03,
//                                       ),
//                                       Icon(
//                                         Icons.bathtub_rounded,
//                                         color: Color.fromRGBO(40, 126, 209, 1),
//                                         size:
//                                             MediaQuery.of(context).size.width *
//                                             0.035,
//                                       ),
//                                       SizedBox(
//                                         width:
//                                             MediaQuery.of(context).size.width *
//                                             0.01,
//                                       ),
//                                       Text(
//                                         "${property.bathrooms}",
//                                         style: GoogleFonts.dmSans(
//                                           fontSize:
//                                               MediaQuery.of(
//                                                 context,
//                                               ).size.width *
//                                               0.035,
//                                           color: Color.fromRGBO(
//                                             110,
//                                             123,
//                                             134,
//                                             1,
//                                           ),
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width:
//                                             MediaQuery.of(context).size.width *
//                                             0.03,
//                                       ),
//                                       SvgPicture.asset(
//                                         "assets/svg/chefIcon.svg",
//                                         height: screenWidth * 0.035,
//                                       ),
//                                       SizedBox(width: screenWidth * 0.01),
                  
//                                       Text(
//                                         "${property.parkings}",
//                                         style: GoogleFonts.dmSans(
//                                           fontSize: screenWidth * 0.035,
//                                           color: Color.fromRGBO(
//                                             110,
//                                             123,
//                                             134,
//                                             1,
//                                           ),
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     height:
//                                         MediaQuery.of(context).size.height *
//                                         0.01,
//                                   ),
//                                   SizedBox(
//                                     width: screenWidth * 0.6,
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Text(
//                                           property.price,
//                                           overflow: TextOverflow.ellipsis,
//                                           style: GoogleFonts.dmSans(
//                                             fontSize:
//                                                 MediaQuery.of(
//                                                   context,
//                                                 ).size.width *
//                                                 0.045,
//                                             color: Color.fromRGBO(8, 47, 84, 1),
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                         GestureDetector(
//                                           onTap: () {
//                                             Navigator.push(
//                                               context,
//                                               MaterialPageRoute(
//                                                 builder:
//                                                     (context) =>
//                                                         PropertyDetails(),
//                                               ),
//                                             );
//                                           },
//                                           child: Container(
//                                             padding: EdgeInsets.all(
//                                               MediaQuery.of(
//                                                     context,
//                                                   ).size.width *
//                                                   0.015,
//                                             ),
//                                             decoration: BoxDecoration(
//                                               color: Color.fromRGBO(
//                                                 228,
//                                                 237,
//                                                 247,
//                                                 1,
//                                               ),
//                                               borderRadius:
//                                                   BorderRadius.circular(8),
//                                             ),
//                                             child: Text(
//                                               "View Details",
//                                               style: GoogleFonts.dmSans(
//                                                 fontWeight: FontWeight.w500,
//                                                 fontSize:
//                                                     MediaQuery.of(
//                                                       context,
//                                                     ).size.width *
//                                                     0.025,
//                                                 color: Color.fromRGBO(
//                                                   9,
//                                                   67,
//                                                   124,
//                                                   1,
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           bottomNavigationBar: CustomBottomNavBar(selectedIndex: 2),
//         );
//       },
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/common/bottom_nav_bar.dart';
import 'package:real_estate/model/property_model.dart';
import 'package:real_estate/properties/propertyDetails.dart';
// import 'package:real_estate/propertyDetails.dart';

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
                onPressed: () {}
                // () => Navigator.pushAndRemoveUntil(
                //   context,
                //   MaterialPageRoute(builder: (context) => DashBoard()),
                //   (Route<dynamic> route) => false,
                // ),
                ),
          ),
          // drawer: FilterDrawer(),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// SEARCH BAR
                //     Flexible(
                //       flex: 6, // Takes 60% of available space
                //       child: Container(
                //         height: screenHeight * 0.05,
                //         decoration: BoxDecoration(
                //           color: Color.fromRGBO(255, 255, 255, 1),
                //           borderRadius: BorderRadius.circular(16),
                //         ),
                //         child: Row(
                //           children: [
                //             const SizedBox(width: 10),
                //             SvgPicture.asset("assets/svg/search-normal.svg"),
                //             const SizedBox(width: 10),
                //             Expanded(
                //               child: TextField(
                //                 onChanged: (value) {
                //                   setState(() {
                //                     searchQuery = value;
                //                   });
                //                 },
                //                 decoration: InputDecoration(
                //                   hintText: "Search",
                //                   hintStyle: GoogleFonts.dmSans(
                //                     fontSize: screenWidth * 0.04,
                //                     fontWeight: FontWeight.w500,
                //                     color: const Color.fromRGBO(
                //                       159,
                //                       171,
                //                       183,
                //                       1,
                //                     ),
                //                   ),
                //                   border: InputBorder.none,
                //                 ),
                //               ),
                //             ),
                //             const SizedBox(width: 10),
                //           ],
                //         ),
                //       ),
                //     ),

                //     SizedBox(width: screenWidth * 0.02), // Small gap
                //     /// FILTER BUTTON
                //     Flexible(
                //       flex: 3, // Takes 30% of available space
                //       child: Builder(
                //         builder: (context) {
                //           return GestureDetector(
                //             onTap: () {
                //               Scaffold.of(context).openDrawer();
                //             },
                //             child: Container(
                //               padding: EdgeInsets.all(screenWidth * 0.02),
                //               height: screenHeight * 0.05,
                //               decoration: BoxDecoration(
                //                 color: Color.fromRGBO(228, 237, 247, 1),
                //                 borderRadius: BorderRadius.circular(8),
                //               ),
                //               child: Row(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 children: [
                //                   SvgPicture.asset(
                //                     "assets/svg/filter.svg",
                //                     height: screenHeight * 0.02,
                //                   ),
                //                   SizedBox(width: screenWidth * 0.02),
                //                   Text(
                //                     "Filter",
                //                     style: GoogleFonts.dmSans(
                //                       fontWeight: FontWeight.w500,
                //                       fontSize: screenWidth * 0.045,
                //                       color: Color.fromRGBO(33, 97, 158, 1),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           );
                //         },
                //       ),
                //     ),
                //   ],
                // ),


                Flexible(
  flex: 6, // Takes 60% of available space
  child: Container(
    height: screenHeight * 0.06, // Adjusted for better responsiveness
    decoration: BoxDecoration(
      color: const Color.fromRGBO(255, 255, 255, 1),
      borderRadius: BorderRadius.circular(screenWidth * 0.04), // Responsive border radius
    ),
    child: Row(
      children: [
        SizedBox(width: screenWidth * 0.02), // Responsive spacing
        SvgPicture.asset(
          "assets/svg/search-normal.svg",
          height: screenHeight * 0.03, // Responsive icon size
        ),
        SizedBox(width: screenWidth * 0.02),
        Expanded(
          child: TextField(
            onChanged: (value) {
              setState(() {
                searchQuery = value;
              });
            },
            style: GoogleFonts.dmSans(
              fontSize: screenWidth * 0.04, // Adjusting text size dynamically
            ),
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: GoogleFonts.dmSans(
                fontSize: screenWidth * 0.035, // Adjusting hint text size
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(159, 171, 183, 1),
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

SizedBox(width: screenWidth * 0.02), // Small gap

/// FILTER BUTTON
Flexible(
  flex: 3, // Takes 30% of available space
  child: Builder(
    builder: (context) {
      return GestureDetector(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: Container(
          // padding: EdgeInsets.all(screenWidth * 0.025), // Responsive padding
          height: screenHeight * 0.06, // Slightly increased for better touch experience
          decoration: BoxDecoration(
            color: const Color.fromRGBO(228, 237, 247, 1),
            borderRadius: BorderRadius.circular(screenWidth * 0.025),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/svg/filter.svg",
                height: screenHeight * 0.025, // Responsive icon size
              ),
              SizedBox(width: screenWidth * 0.015),
              Text(
                "Filter",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w500,
                  fontSize: screenWidth * 0.04, // Responsive font size
                  color: const Color.fromRGBO(33, 97, 158, 1),
                ),
              ),
            ],
          ),
        ),
      );
    },
  ),
),

                  ],
                ),

                // Flexible(
                //   child: ListView.builder(
                //     itemCount: properties.length,
                //     itemBuilder: (context, index) {
                //       final property = properties[index];
                //       return Container(
                //         padding: EdgeInsets.all(
                //           MediaQuery.of(context).size.width * 0.025,
                //         ),
                //         margin: EdgeInsets.only(
                //           top: MediaQuery.of(context).size.height * 0.02,
                //         ),
                //         decoration: BoxDecoration(
                //           color: Colors.white,
                //           borderRadius: BorderRadius.circular(9),
                //           boxShadow: [
                //             BoxShadow(
                //               color: Color.fromRGBO(0, 0, 0, 0.09),
                //               offset: Offset(0.0, 4.0),
                //               blurRadius: 4.0,
                //               spreadRadius: 0.0,
                //             ),
                //           ],
                //         ),
                //         child: Row(
                //           children: [
                //             Container(
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(9),
                //               ),
                //               clipBehavior: Clip.antiAlias,
                //               child: Image.asset(
                //                 property.imageUrl,
                //                 width: MediaQuery.of(context).size.width * 0.25,
                //                 height:
                //                     MediaQuery.of(context).size.height * 0.15,
                //                 fit: BoxFit.cover,
                //               ),
                //             ),
                //             Padding(
                //               padding: EdgeInsets.only(
                //                 left: MediaQuery.of(context).size.width * 0.02,
                //               ),
                //               child: Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   FittedBox(
                //                     fit: BoxFit.scaleDown,
                //                     child: Expanded(
                //                       child: Text(
                //                         "${property.title}",
                //                         softWrap: true,
                //                         overflow: TextOverflow.ellipsis,

                //                         style: GoogleFonts.dmSans(
                //                           fontSize:
                //                               MediaQuery.of(context).size.width *
                //                               0.04,
                //                           fontWeight: FontWeight.w500,
                //                           color: Color.fromRGBO(8, 47, 84, 1),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                   SizedBox(
                //                     height:
                //                         MediaQuery.of(context).size.height *
                //                         0.01,
                //                   ),
                //                   Row(

                //                     children: [
                //                       Icon(
                //                         Icons.location_on,
                //                         color: Color.fromRGBO(110, 123, 134, 1),
                //                         size:
                //                             MediaQuery.of(context).size.width *
                //                             0.04,
                //                       ),
                //                       SizedBox(
                //                         width:
                //                             MediaQuery.of(context).size.width *
                //                             0.01,
                //                       ),
                //                       FittedBox(
                //                         fit: BoxFit.scaleDown,
                //                         child: Text(
                //                           "${property.location}",
                //                           softWrap: true,
                //                           overflow: TextOverflow.ellipsis,

                //                           textAlign: TextAlign.center,
                //                           style: GoogleFonts.dmSans(
                //                             fontSize:
                //                                 MediaQuery.of(
                //                                   context,
                //                                 ).size.width *
                //                                 0.03,
                //                             color: Color.fromRGBO(
                //                               110,
                //                               123,
                //                               134,
                //                               1,
                //                             ),
                //                             fontWeight: FontWeight.w500,
                //                           ),
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                   SizedBox(
                //                     height:
                //                         MediaQuery.of(context).size.height *
                //                         0.01,
                //                   ),
                //                   Row(
                //                     children: [
                //                       SvgPicture.asset(
                //                         "assets/svg/area.svg",
                //                         height:
                //                             MediaQuery.of(context).size.width *
                //                             0.035,
                //                       ),
                //                       SizedBox(
                //                         width:
                //                             MediaQuery.of(context).size.width *
                //                             0.01,
                //                       ),
                //                       Text(
                //                         "${property.area}",
                //                         style: GoogleFonts.dmSans(
                //                           fontSize:
                //                               MediaQuery.of(
                //                                 context,
                //                               ).size.width *
                //                               0.035,
                //                           color: Color.fromRGBO(
                //                             110,
                //                             123,
                //                             134,
                //                             1,
                //                           ),
                //                           fontWeight: FontWeight.w500,
                //                         ),
                //                       ),
                //                       SizedBox(
                //                         width:
                //                             MediaQuery.of(context).size.width *
                //                             0.03,
                //                       ),
                //                       Icon(
                //                         Icons.airline_seat_flat_rounded,
                //                         color: Color.fromRGBO(40, 126, 209, 1),
                //                         size:
                //                             MediaQuery.of(context).size.width *
                //                             0.035,
                //                       ),
                //                       SizedBox(
                //                         width:
                //                             MediaQuery.of(context).size.width *
                //                             0.01,
                //                       ),
                //                       Text(
                //                         "${property.bedrooms}",
                //                         style: GoogleFonts.dmSans(
                //                           fontSize:
                //                               MediaQuery.of(
                //                                 context,
                //                               ).size.width *
                //                               0.035,
                //                           color: Color.fromRGBO(
                //                             110,
                //                             123,
                //                             134,
                //                             1,
                //                           ),
                //                           fontWeight: FontWeight.w500,
                //                         ),
                //                       ),
                //                       SizedBox(
                //                         width:
                //                             MediaQuery.of(context).size.width *
                //                             0.03,
                //                       ),
                //                       Icon(
                //                         Icons.bathtub_rounded,
                //                         color: Color.fromRGBO(40, 126, 209, 1),
                //                         size:
                //                             MediaQuery.of(context).size.width *
                //                             0.035,
                //                       ),
                //                       SizedBox(
                //                         width:
                //                             MediaQuery.of(context).size.width *
                //                             0.01,
                //                       ),
                //                       Text(
                //                         "${property.bathrooms}",
                //                         style: GoogleFonts.dmSans(
                //                           fontSize:
                //                               MediaQuery.of(
                //                                 context,
                //                               ).size.width *
                //                               0.035,
                //                           color: Color.fromRGBO(
                //                             110,
                //                             123,
                //                             134,
                //                             1,
                //                           ),
                //                           fontWeight: FontWeight.w500,
                //                         ),
                //                       ),
                //                       SizedBox(
                //                         width:
                //                             MediaQuery.of(context).size.width *
                //                             0.03,
                //                       ),
                //                       SvgPicture.asset(
                //                         "assets/svg/chefIcon.svg",
                //                         height: screenWidth * 0.035,
                //                       ),
                //                       SizedBox(width: screenWidth * 0.01),

                //                       Text(
                //                         "${property.parkings}",
                //                         style: GoogleFonts.dmSans(
                //                           fontSize: screenWidth * 0.035,
                //                           color: Color.fromRGBO(
                //                             110,
                //                             123,
                //                             134,
                //                             1,
                //                           ),
                //                           fontWeight: FontWeight.w500,
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                   SizedBox(
                //                     height:
                //                         MediaQuery.of(context).size.height *
                //                         0.01,
                //                   ),
                //                   SizedBox(
                //                     width: screenWidth * 0.6,
                //                     child: Row(
                //                       mainAxisAlignment:
                //                           MainAxisAlignment.spaceBetween,
                //                       children: [
                //                         Text(
                //                           property.price,
                //                           overflow: TextOverflow.ellipsis,
                //                           style: GoogleFonts.dmSans(
                //                             fontSize:
                //                                 MediaQuery.of(
                //                                   context,
                //                                 ).size.width *
                //                                 0.045,
                //                             color: Color.fromRGBO(8, 47, 84, 1),
                //                             fontWeight: FontWeight.w600,
                //                           ),
                //                         ),
                //                         GestureDetector(
                //                           onTap: () {
                //                             Navigator.push(
                //                               context,
                //                               MaterialPageRoute(
                //                                 builder:
                //                                     (context) =>
                //                                         PropertyDetails(),
                //                               ),
                //                             );
                //                           },
                //                           child: Container(
                //                             padding: EdgeInsets.all(
                //                               MediaQuery.of(
                //                                     context,
                //                                   ).size.width *
                //                                   0.015,
                //                             ),
                //                             decoration: BoxDecoration(
                //                               color: Color.fromRGBO(
                //                                 228,
                //                                 237,
                //                                 247,
                //                                 1,
                //                               ),
                //                               borderRadius:
                //                                   BorderRadius.circular(8),
                //                             ),
                //                             child: Text(
                //                               "View Details",
                //                               style: GoogleFonts.dmSans(
                //                                 fontWeight: FontWeight.w500,
                //                                 fontSize:
                //                                     MediaQuery.of(
                //                                       context,
                //                                     ).size.width *
                //                                     0.025,
                //                                 color: Color.fromRGBO(
                //                                   9,
                //                                   67,
                //                                   124,
                //                                   1,
                //                                 ),
                //                               ),
                //                             ),
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ],
                //         ),
                //       );
                //     },
                //   ),
                // ),
                Flexible(
                  child: ListView.builder(
                    itemCount: properties.length,
                    itemBuilder: (context, index) {
                      final property = properties[index];
                      return Container(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025),
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02),
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
                                  borderRadius: BorderRadius.circular(9)),
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset(
                                property.imageUrl,
                                width: MediaQuery.of(context).size.width * 0.25,
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width *
                                    0.02), // Spacing
                            Expanded(
                              // Prevents overflow
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${property.title}",
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.dmSans(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 47, 84, 1),
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on,
                                          color:
                                              Color.fromRGBO(110, 123, 134, 1),
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.01),
                                      Expanded(
                                        // Prevents overflow
                                        child: Text(
                                          "${property.location}",
                                          softWrap: true,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.dmSans(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.03,
                                            color: Color.fromRGBO(
                                                110, 123, 134, 1),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01),
                                  Wrap(
                                    // Ensures items wrap instead of overflowing
                                    spacing: MediaQuery.of(context).size.width *
                                        0.03,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                              "assets/svg/area.svg",
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.035),
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.01),
                                          Text(
                                            "${property.area}",
                                            style: GoogleFonts.dmSans(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.035,
                                              color: Color.fromRGBO(
                                                  110, 123, 134, 1),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(Icons.airline_seat_flat_rounded,
                                              color: Color.fromRGBO(
                                                  40, 126, 209, 1),
                                              size: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.035),
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.01),
                                          Text(
                                            "${property.bedrooms}",
                                            style: GoogleFonts.dmSans(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.035,
                                              color: Color.fromRGBO(
                                                  110, 123, 134, 1),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(Icons.bathtub_rounded,
                                              color: Color.fromRGBO(
                                                  40, 126, 209, 1),
                                              size: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.035),
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.01),
                                          Text(
                                            "${property.bathrooms}",
                                            style: GoogleFonts.dmSans(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.035,
                                              color: Color.fromRGBO(
                                                  110, 123, 134, 1),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                              "assets/svg/chefIcon.svg",
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.035),
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.01),
                                          Text(
                                            "${property.parkings}",
                                            style: GoogleFonts.dmSans(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.035,
                                              color: Color.fromRGBO(
                                                  110, 123, 134, 1),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        property.price,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.dmSans(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.045,
                                          color: Color.fromRGBO(8, 47, 84, 1),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PropertyDetails(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.015),
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                228, 237, 247, 1),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Text(
                                            "View Details",
                                            style: GoogleFonts.dmSans(
                                              fontWeight: FontWeight.w500,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.025,
                                              color:
                                                  Color.fromRGBO(9, 67, 124, 1),
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
