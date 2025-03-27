// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:real_estate/dashboard/dashboard.dart';
// import 'package:real_estate/followup/follow_ups.dart';
// import 'package:real_estate/leads/add_lead.dart';
// import 'package:real_estate/leads/assigned_lead.dart';
// import 'package:real_estate/properties/properties.dart';

// class FilterDrawer extends StatefulWidget {
//   const FilterDrawer({super.key});

//   @override
//   _FilterDrawerState createState() => _FilterDrawerState();
// }

// class _FilterDrawerState extends State<FilterDrawer>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   int? _selectedIndex = 0; // Track selected main menu item
//   int? _selectedSubIndex; // Track selected submenu item
//   bool _isLeadsExpanded = false; // Track Leads dropdown state

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 500),
//     )..forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;

//     return Drawer(
//       child: AnimatedBuilder(
//         animation: _controller,
//         builder: (context, child) {
//           return Container(
//             decoration: const BoxDecoration(
//               color: Color.fromRGBO(14, 39, 63, 1),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Column(
//                 children: [
//                   /// Profile Section
//                   Padding(
//                     padding: const EdgeInsets.only(top: 17.0),
//                     child: Row(
//                       children: [
//                         Container(
//                           height: height * 0.07,
//                           width: width * 0.14,
//                           decoration: const BoxDecoration(shape: BoxShape.circle),
//                           child: SvgPicture.asset(
//                             "assets/svg/Avatar.svg",
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                         SizedBox(width: width * 0.04),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "John Doe",
//                               style: GoogleFonts.dmSans(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: height * 0.02,
//                               ),
//                             ),
//                             Text(
//                               "+91 8888888888",
//                               style: GoogleFonts.dmSans(
//                                 color: Color.fromRGBO(209, 211, 212, 1),
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: height * 0.015,
//                               ),
//                             ),
//                           ],
//                         ),
//                         const Spacer(),
//                         GestureDetector(
//                           onTap: () => Navigator.pop(context), // Close drawer
//                           child: Icon(
//                             Icons.close,
//                             color: Color.fromRGBO(209, 211, 212, 1),
//                             size: width * 0.075,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   SizedBox(height: height * 0.04),

//                   /// Menu Items
//                   buildMenuItem(0, "Dashboard", "assets/svg/Menu icon.svg",()=> DashBoard()),

//                   /// Leads with Dropdown
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _isLeadsExpanded = !_isLeadsExpanded;
//                         _selectedIndex = _isLeadsExpanded ? 1 : null; // Keep "Leads" highlighted when expanded
//                       });
//                     },
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//                       decoration: BoxDecoration(
//                         color: _selectedIndex == 1 ? Color.fromRGBO(255, 255, 255, 0.2) : Colors.transparent,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Row(
//                         children: [
//                           SvgPicture.asset("assets/svg/Icon- Outline.svg", color: Colors.white),
//                           const SizedBox(width: 10),
//                           Expanded(
//                             child: Text(
//                               "Leads",
//                               style: GoogleFonts.dmSans(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 16,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                           Icon(
//                             _isLeadsExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
//                             color: Colors.white,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                   if (_isLeadsExpanded) ...[
//                     buildSubMenuItem(0, "My Leads", "assets/svg/my_leads.svg",() => AssignedLeads()),
//                     buildSubMenuItem(1, "Generate New Lead", "assets/svg/new_lead.svg",() => AddLeader()),
//                   ],

//                   buildMenuItem(2, "Follow ups", "assets/svg/follow.svg",() => FollowUp()),
//                   buildMenuItem(3, "Properties", "assets/svg/properties.svg",() => Property()),
//                   buildMenuItem(4, "Settings", "assets/svg/settings.svg", () => Property()),
//                   buildMenuItem(5, "Logout", "assets/svg/logout.svg", () => Property()),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   /// Method to Build Main Menu Items
//   Widget buildMenuItem(int index, String text, String iconPath,Widget classCall()) {
//     bool isSelected = _selectedIndex == index; // Check if selected

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _selectedIndex = index;
//           _selectedSubIndex = null; // Reset submenu selection
//           _isLeadsExpanded = false; // Collapse Leads dropdown when selecting other menu items
//         });
//         Navigator.pop(context);
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context)=>classCall()),
//         ); // Close drawer on selection
//       },
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//         margin: const EdgeInsets.only(bottom: 10),
//         decoration: BoxDecoration(
//           color: isSelected ? Color.fromRGBO(255, 255, 255, 0.2) : Colors.transparent,
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Row(
//           children: [
//             SvgPicture.asset(iconPath, color: Colors.white),
//             const SizedBox(width: 10),
//             Text(
//               text,
//               style: GoogleFonts.dmSans(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 16,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   /// Method to Build Submenu Items
//   Widget buildSubMenuItem(int subIndex, String text, String iconPath, Widget classCall()) {
//     bool isSelected = _selectedSubIndex == subIndex; // Check if submenu is selected

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _selectedSubIndex = subIndex;
//           _selectedIndex = 1; // Keep Leads highlighted
//         });
//         Navigator.pop(context); // Close drawer on selection
//         Navigator.push(context, MaterialPageRoute(builder: (context) => classCall()));
//       },
//       child: Padding(
//         padding: const EdgeInsets.only(left: 40, top: 8, bottom: 5),
//         child: Container(
//           padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//           decoration: BoxDecoration(
//             color: isSelected ? Color.fromRGBO(255, 255, 255, 0.2) : Colors.transparent,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Row(
//             children: [
//               SvgPicture.asset(iconPath, color: Colors.white, width: 20),
//               const SizedBox(width: 10),
//               Text(
//                 text,
//                 style: GoogleFonts.dmSans(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class FilterDrawer extends StatefulWidget {
//   const FilterDrawer({super.key});

//   @override
//   _FilterDrawerState createState() => _FilterDrawerState();
// }

// class _FilterDrawerState extends State<FilterDrawer>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   RangeValues _priceRange = const RangeValues(5000000, 25000000);

//   List<String> propertyTypes = ["Apartment", "Villa", "Penthouse", "Studio", "House"];
//   List<String> selectedPropertyTypes = [];

//   List<String> locations = ["Bangalore", "Delhi", "Mumbai", "Chennai", "Pune"];
//   List<String> selectedLocations = [];

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 500),
//     )..forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;

//     return Drawer(
//       width: MediaQuery.of(context).size.width * 0.75,
//       child: AnimatedBuilder(
//         animation: _controller,
//         builder: (context, child) {
//           return SingleChildScrollView(
//             child: Container(
//               height: height,
//               padding: EdgeInsets.only(top:30),
//               decoration: const BoxDecoration(
//                 color: Color.fromRGBO(14, 39, 63, 1),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     /// Close Button & Title
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Filter",
//                           style: GoogleFonts.dmSans(
//                             color: Colors.white,
//                             fontSize: height * 0.025,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         GestureDetector(
//                           onTap: () => Navigator.pop(context), // Close drawer
//                           child: Icon(
//                             Icons.close,
//                             color: Colors.white,
//                             size: width * 0.07,
//                           ),
//                         ),
//                       ],
//                     ),
            
//                     const SizedBox(height: 60),
            
//                     /// Property Type Section
//                     Text(
//                       "Property Type",
//                       style: GoogleFonts.dmSans(
//                         color: Colors.white,
//                         fontSize: height * 0.02,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Wrap(
//                       spacing: 10,
//                       runSpacing: 10,
//                       children: propertyTypes.map((type) {
//                         bool isSelected = selectedPropertyTypes.contains(type);
//                         return GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               isSelected
//                                   ? selectedPropertyTypes.remove(type)
//                                   : selectedPropertyTypes.add(type);
//                             });
//                           },
//                           child: FilterChipWidget(label: type, isSelected: isSelected),
//                         );
//                       }).toList(),
//                     ),
            
//                     const SizedBox(height: 80),
            
//                     /// Price Range Slider
//                     Text(
//                       "Price Range",
//                       style: GoogleFonts.dmSans(
//                         color: Colors.white,
//                         fontSize: height * 0.02,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     RangeSlider(
//                       values: _priceRange,
//                       min: 5000000,
//                       max: 50000000,
//                       divisions: 10,
//                       activeColor: Colors.white,
//                       inactiveColor: Colors.grey,
//                       labels: RangeLabels(
//                         "₹${_priceRange.start.toStringAsFixed(0)}",
//                         "₹${_priceRange.end.toStringAsFixed(0)}",
//                       ),
//                       onChanged: (values) {
//                         setState(() {
//                           _priceRange = values;
//                         });
//                       },
//                     ),
            
//                     const SizedBox(height: 80),
            
//                     /// Location Section
//                     Text(
//                       "Location",
//                       style: GoogleFonts.dmSans(
//                         color: Colors.white,
//                         fontSize: height * 0.02,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Wrap(
//                       spacing: 10,
//                       runSpacing: 10,
//                       children: locations.map((location) {
//                         bool isSelected = selectedLocations.contains(location);
//                         return GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               isSelected
//                                   ? selectedLocations.remove(location)
//                                   : selectedLocations.add(location);
//                             });
//                           },
//                           child: FilterChipWidget(label: location, isSelected: isSelected),
//                         );
//                       }).toList(),
//                     ),
            
//                     const SizedBox(height: 30),
            
                    
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// /// **Custom Chip Widget**
// class FilterChipWidget extends StatelessWidget {
//   final String label;
//   final bool isSelected;

//   const FilterChipWidget({super.key, required this.label, required this.isSelected});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
//       decoration: BoxDecoration(
//         color: isSelected ? Colors.white : const Color.fromRGBO(28, 56, 86, 1),
//         borderRadius: BorderRadius.circular(20),
//         border: isSelected ? Border.all(color: Colors.white) : null,
//       ),
//       child: Text(
//         label,
//         style: GoogleFonts.dmSans(
//           color: isSelected ? const Color.fromRGBO(14, 39, 63, 1) : Colors.white,
//           fontSize: 14,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class FilterDrawer extends StatefulWidget {
//   const FilterDrawer({super.key});

//   @override
//   _FilterDrawerState createState() => _FilterDrawerState();
// }

// class _FilterDrawerState extends State<FilterDrawer>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   RangeValues _priceRange = const RangeValues(5000000, 25000000);

//   List<String> propertyTypes = ["Apartment", "Villa", "Penthouse", "Studio", "House"];
//   List<String> selectedPropertyTypes = [];

//   List<String> locations = ["Bangalore", "Delhi", "Mumbai", "Chennai", "Pune"];
//   List<String> selectedLocations = [];

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 500),
//     )..forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     double baseSize = MediaQuery.of(context).size.shortestSide * 0.035;
//     double textScaleFactor = MediaQuery.of(context).textScaleFactor;

//     return Drawer(
//       width: MediaQuery.of(context).size.width * 0.75,
//       child: AnimatedBuilder(
//         animation: _controller,
//         builder: (context, child) {
//           return SingleChildScrollView(
            
//             child: Container(
//               height: height,
//               padding: EdgeInsets.only(top: 30),
//               decoration: const BoxDecoration(
//                 color: Color.fromRGBO(14, 39, 63, 1),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     /// Close Button & Title
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Filter",
//                           style: GoogleFonts.dmSans(
//                             color: Colors.white,
//                             fontSize: baseSize * 1.2 * textScaleFactor,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         GestureDetector(
//                           onTap: () => Navigator.pop(context),
//                           child: Icon(
//                             Icons.close,
//                             color: Colors.white,
//                             size: baseSize * 2,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 60),

//                     /// Property Type Section
//                     buildSectionTitle("Property Type", baseSize, textScaleFactor),
//                     const SizedBox(height: 20),
//                     buildFilterChips(propertyTypes, selectedPropertyTypes),
//                     const SizedBox(height: 80),

//                     /// Price Range Slider
//                     buildSectionTitle("Price Range", baseSize, textScaleFactor),
//                     const SizedBox(height: 10),
//                     RangeSlider(
//                       values: _priceRange,
//                       min: 5000000,
//                       max: 50000000,
//                       divisions: 10,
//                       activeColor: Colors.white,
//                       inactiveColor: Colors.grey,
//                       labels: RangeLabels(
//                         "₹${_priceRange.start.toStringAsFixed(0)}",
//                         "₹${_priceRange.end.toStringAsFixed(0)}",
//                       ),
//                       onChanged: (values) {
//                         setState(() {
//                           _priceRange = values;
//                         });
//                       },
//                     ),
//                     const SizedBox(height: 80),

//                     /// Location Section
//                     buildSectionTitle("Location", baseSize, textScaleFactor),
//                     const SizedBox(height: 20),
//                     buildFilterChips(locations, selectedLocations),
//                     const SizedBox(height: 30),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget buildSectionTitle(String title, double baseSize, double textScaleFactor) {
//     return Text(
//       title,
//       style: GoogleFonts.dmSans(
//         color: Colors.white,
//         fontSize: baseSize * textScaleFactor,
//         fontWeight: FontWeight.w600,
//       ),
//     );
//   }

//   Widget buildFilterChips(List<String> items, List<String> selectedItems) {
//     return Wrap(
//       spacing: 10,
//       runSpacing: 10,
//       children: items.map((item) {
//         bool isSelected = selectedItems.contains(item);
//         return GestureDetector(
//           onTap: () {
//             setState(() {
//               isSelected ? selectedItems.remove(item) : selectedItems.add(item);
//             });
//           },
//           child: FilterChipWidget(label: item, isSelected: isSelected),
//         );
//       }).toList(),
//     );
//   }
// }

// /// **Custom Chip Widget**
// class FilterChipWidget extends StatelessWidget {
//   final String label;
//   final bool isSelected;

//   const FilterChipWidget({super.key, required this.label, required this.isSelected});

//   @override
//   Widget build(BuildContext context) {
//     double baseSize = MediaQuery.of(context).size.shortestSide * 0.035;
//     double textScaleFactor = MediaQuery.of(context).textScaleFactor;

//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
//       decoration: BoxDecoration(
//         color: isSelected ? Colors.white : const Color.fromRGBO(28, 56, 86, 1),
//         borderRadius: BorderRadius.circular(20),
//         border: isSelected ? Border.all(color: Colors.white) : null,
//       ),
//       child: Text(
//         label,
//         style: GoogleFonts.dmSans(
//           color: isSelected ? const Color.fromRGBO(14, 39, 63, 1) : Colors.white,
//           fontSize: baseSize * 0.8 * textScaleFactor,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterDrawer extends StatefulWidget {
  const FilterDrawer({super.key});

  @override
  _FilterDrawerState createState() => _FilterDrawerState();
}

class _FilterDrawerState extends State<FilterDrawer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  RangeValues _priceRange = const RangeValues(5000000, 25000000);

  List<String> propertyTypes = ["Apartment", "Villa", "Penthouse", "Studio", "House"];
  List<String> selectedPropertyTypes = [];

  List<String> locations = ["Bangalore", "Delhi", "Mumbai", "Chennai", "Pune"];
  List<String> selectedLocations = [];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double baseSize = MediaQuery.of(context).size.shortestSide * 0.035;
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Drawer(
      width: width * 0.75,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return SingleChildScrollView(
            child: Container(
              height: height,
              padding: const EdgeInsets.only(top: 30),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(14, 39, 63, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min, // Prevents expansion issues
                  children: [
                    /// Close Button & Title
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Filter",
                          style: GoogleFonts.dmSans(
                            color: Colors.white,
                            fontSize: baseSize * 1.2 * textScaleFactor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: baseSize * 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    /// Property Type Section
                    buildSectionTitle("Property Type", baseSize, textScaleFactor),
                    const SizedBox(height: 10),
                    buildFilterChips(propertyTypes, selectedPropertyTypes),
                    const SizedBox(height: 30),

                    /// Price Range Slider
                    buildSectionTitle("Price Range", baseSize, textScaleFactor),
                    const SizedBox(height: 10),
                    RangeSlider(
                      values: _priceRange,
                      min: 5000000,
                      max: 50000000,
                      divisions: 10,
                      activeColor: Colors.white,
                      inactiveColor: Colors.grey,
                      labels: RangeLabels(
                        "₹${_priceRange.start.toStringAsFixed(0)}",
                        "₹${_priceRange.end.toStringAsFixed(0)}",
                      ),
                      onChanged: (values) {
                        setState(() {
                          _priceRange = values;
                        });
                      },
                    ),
                    const SizedBox(height: 30),

                    /// Location Section
                    buildSectionTitle("Location", baseSize, textScaleFactor),
                    const SizedBox(height: 10),
                    buildFilterChips(locations, selectedLocations),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  /// **Section Title Widget**
  Widget buildSectionTitle(String title, double baseSize, double textScaleFactor) {
    return Text(
      title,
      style: GoogleFonts.dmSans(
        color: Colors.white,
        fontSize: baseSize * textScaleFactor,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  /// **Filter Chips Widget**
  Widget buildFilterChips(List<String> items, List<String> selectedItems) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: items.map((item) {
        bool isSelected = selectedItems.contains(item);
        return GestureDetector(
          onTap: () {
            setState(() {
              isSelected ? selectedItems.remove(item) : selectedItems.add(item);
            });
          },
          child: FilterChipWidget(label: item, isSelected: isSelected),
        );
      }).toList(),
    );
  }
}

/// **Custom Chip Widget**
class FilterChipWidget extends StatelessWidget {
  final String label;
  final bool isSelected;

  const FilterChipWidget({super.key, required this.label, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    double baseSize = MediaQuery.of(context).size.shortestSide * 0.035;
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : const Color.fromRGBO(28, 56, 86, 1),
        borderRadius: BorderRadius.circular(20),
        border: isSelected ? Border.all(color: Colors.white) : null,
      ),
      child: Text(
        label,
        style: GoogleFonts.dmSans(
          color: isSelected ? const Color.fromRGBO(14, 39, 63, 1) : Colors.white,
          fontSize: baseSize * 0.8 * textScaleFactor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
