// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';

// class AppDrawer extends StatefulWidget {
//   const AppDrawer({super.key});

//   @override
//   _AppDrawerState createState() => _AppDrawerState();
// }

// class _AppDrawerState extends State<AppDrawer>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 1),
//     )..forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double Width = MediaQuery.of(context).size.width;
//     double Height = MediaQuery.of(context).size.height;

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
//                   Row(
//                     children: [
//                       Container(
//                         height: Height * 0.17,
//                         width: Width * 0.17,
//                         decoration: BoxDecoration(shape: BoxShape.circle),
//                         child: SvgPicture.asset(
//                           "assets/svg/Avatar.svg",
//                           fit: BoxFit.contain,
//                         ),
//                       ),
//                       SizedBox(width: Width * 0.04),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "John Doe",
//                             style: GoogleFonts.dmSans(
//                               color: Colors.white,
//                               fontWeight: FontWeight.w600,
//                               fontSize: Height * 0.02,
//                             ),
//                           ),
//                           Text(
//                             "+91 8888888888",
//                             style: GoogleFonts.dmSans(
//                               color: Color.fromRGBO(209, 211, 212, 1),
//                               fontWeight: FontWeight.w400,
//                               fontSize: Height * 0.015,
//                             ),
//                           ),
//                         ],
//                       ),
//                       Spacer(),
//                       Icon(
//                         Icons.close,
//                         color: Color.fromRGBO(209, 211, 212, 1),
//                         size: Width * 0.075,
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: Height * 0.01),

//                   Row(
//                     children: [
//                       SvgPicture.asset("assets/svg/Menu icon.svg"),
//                       SizedBox(width: Width * 0.02),
//                       Text(
//                         "Dashboard",
//                         style: GoogleFonts.dmSans(
//                           fontWeight: FontWeight.w600,
//                           fontSize: Height * 0.02,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),
                  
//                   SizedBox(height:Height*0.04),
//                   Row(
//                     children: [
//                       SvgPicture.asset("assets/svg/Icon- Outline.svg"),
//                       SizedBox(width: Width * 0.02),
//                       Text(
//                         "Leads",
//                         style: GoogleFonts.dmSans(
//                           fontWeight: FontWeight.w600,
//                           fontSize: Height * 0.02,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height:Height*0.04),
//                   Row(
//                     children: [
//                       SvgPicture.asset("assets/svg/follow.svg"),
//                       SizedBox(width: Width * 0.02),
//                       Text(
//                         "Follow ups",
//                         style: GoogleFonts.dmSans(
//                           fontWeight: FontWeight.w600,
//                           fontSize: Height * 0.02,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height:Height*0.04),
//                   Row(
//                     children: [
//                       SvgPicture.asset("assets/svg/properties.svg"),
//                       SizedBox(width: Width * 0.02),
//                       Text(
//                         "Properties",
//                         style: GoogleFonts.dmSans(
//                           fontWeight: FontWeight.w600,
//                           fontSize: Height * 0.02,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height:Height*0.04),
//                   Row(
//                     children: [
//                       SvgPicture.asset("assets/svg/settings.svg"),
//                       SizedBox(width: Width * 0.02),
//                       Text(
//                         "Settings",
//                         style: GoogleFonts.dmSans(
//                           fontWeight: FontWeight.w600,
//                           fontSize: Height * 0.02,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height:Height*0.04),
//                   Row(
//                     children: [
//                       SvgPicture.asset("assets/svg/logout.svg"),
//                       SizedBox(width: Width * 0.02),
//                       Text(
//                         "Logout",
//                         style: GoogleFonts.dmSans(
//                           fontWeight: FontWeight.w600,
//                           fontSize: Height * 0.02,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';

// class AppDrawer extends StatefulWidget {
//   const AppDrawer({super.key});

//   @override
//   _AppDrawerState createState() => _AppDrawerState();
// }

// class _AppDrawerState extends State<AppDrawer>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   int _selectedIndex = 0; // Track selected menu item
//   bool _isLeadsExpanded = false; // Track expansion state of Leads dropdown

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
//                     padding: const EdgeInsets.only(top:17.0),
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
//                   buildMenuItem(0, "Dashboard", "assets/svg/Menu icon.svg"),

//                   /// Leads with Dropdown
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _isLeadsExpanded = !_isLeadsExpanded;
//                       });
//                     },
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//                       decoration: BoxDecoration(
//                         color: _isLeadsExpanded ? Color.fromRGBO(255, 255, 255, 0.2) : Colors.transparent,
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
//                     buildSubMenuItem("My Leads", "assets/svg/my_leads.svg"),
//                     buildSubMenuItem("Generate New Lead", "assets/svg/new_lead.svg"),
//                   ],

//                   buildMenuItem(2, "Follow ups", "assets/svg/follow.svg"),
//                   buildMenuItem(3, "Properties", "assets/svg/properties.svg"),
//                   buildMenuItem(4, "Settings", "assets/svg/settings.svg"),
//                   buildMenuItem(5, "Logout", "assets/svg/logout.svg"),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   /// Method to Build Main Menu Items
//   Widget buildMenuItem(int index, String text, String iconPath) {
//     bool isSelected = _selectedIndex == index; // Check if selected

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _selectedIndex = index;
//         });
//         Navigator.pop(context); // Close drawer on selection
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
//   Widget buildSubMenuItem(String text, String iconPath) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 40, top: 8, bottom: 5),
//       child: Row(
//         children: [
//           SvgPicture.asset(iconPath, color: Colors.white, width: 20),
//           const SizedBox(width: 10),
//           Text(
//             text,
//             style: GoogleFonts.dmSans(
//               fontWeight: FontWeight.w600,
//               fontSize: 16,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/follow_ups.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int? _selectedIndex = 0; // Track selected main menu item
  int? _selectedSubIndex; // Track selected submenu item
  bool _isLeadsExpanded = false; // Track Leads dropdown state

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

    return Drawer(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(14, 39, 63, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  /// Profile Section
                  Padding(
                    padding: const EdgeInsets.only(top: 17.0),
                    child: Row(
                      children: [
                        Container(
                          height: height * 0.07,
                          width: width * 0.14,
                          decoration: const BoxDecoration(shape: BoxShape.circle),
                          child: SvgPicture.asset(
                            "assets/svg/Avatar.svg",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(width: width * 0.04),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Doe",
                              style: GoogleFonts.dmSans(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: height * 0.02,
                              ),
                            ),
                            Text(
                              "+91 8888888888",
                              style: GoogleFonts.dmSans(
                                color: Color.fromRGBO(209, 211, 212, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: height * 0.015,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () => Navigator.pop(context), // Close drawer
                          child: Icon(
                            Icons.close,
                            color: Color.fromRGBO(209, 211, 212, 1),
                            size: width * 0.075,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: height * 0.04),

                  /// Menu Items
                  buildMenuItem(0, "Dashboard", "assets/svg/Menu icon.svg"),

                  /// Leads with Dropdown
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isLeadsExpanded = !_isLeadsExpanded;
                        _selectedIndex = _isLeadsExpanded ? 1 : null; // Keep "Leads" highlighted when expanded
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        color: _selectedIndex == 1 ? Color.fromRGBO(255, 255, 255, 0.2) : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/svg/Icon- Outline.svg", color: Colors.white),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Leads",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Icon(
                            _isLeadsExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),

                  if (_isLeadsExpanded) ...[
                    buildSubMenuItem(0, "My Leads", "assets/svg/my_leads.svg"),
                    buildSubMenuItem(1, "Generate New Lead", "assets/svg/new_lead.svg"),
                  ],

                  buildMenuItem(2, "Follow ups", "assets/svg/follow.svg"),
                  buildMenuItem(3, "Properties", "assets/svg/properties.svg"),
                  buildMenuItem(4, "Settings", "assets/svg/settings.svg"),
                  buildMenuItem(5, "Logout", "assets/svg/logout.svg"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  /// Method to Build Main Menu Items
  Widget buildMenuItem(int index, String text, String iconPath) {
    bool isSelected = _selectedIndex == index; // Check if selected

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          _selectedSubIndex = null; // Reset submenu selection
          _isLeadsExpanded = false; // Collapse Leads dropdown when selecting other menu items
        });
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>FollowUp()),
        ); // Close drawer on selection
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: isSelected ? Color.fromRGBO(255, 255, 255, 0.2) : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SvgPicture.asset(iconPath, color: Colors.white),
            const SizedBox(width: 10),
            Text(
              text,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Method to Build Submenu Items
  Widget buildSubMenuItem(int subIndex, String text, String iconPath) {
    bool isSelected = _selectedSubIndex == subIndex; // Check if submenu is selected

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedSubIndex = subIndex;
          _selectedIndex = 1; // Keep Leads highlighted
        });
        Navigator.pop(context); // Close drawer on selection
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 40, top: 8, bottom: 5),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            color: isSelected ? Color.fromRGBO(255, 255, 255, 0.2) : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              SvgPicture.asset(iconPath, color: Colors.white, width: 20),
              const SizedBox(width: 10),
              Text(
                text,
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
