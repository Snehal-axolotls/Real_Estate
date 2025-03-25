import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/dashboard/dashboard.dart';
import 'package:real_estate/followup/follow_ups.dart';
import 'package:real_estate/leads/add_lead.dart';
import 'package:real_estate/leads/assigned_lead.dart';
import 'package:real_estate/properties/properties.dart';

class FilterDrawer extends StatefulWidget {
  const FilterDrawer({super.key});

  @override
  _FilterDrawerState createState() => _FilterDrawerState();
}

class _FilterDrawerState extends State<FilterDrawer>
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
                  buildMenuItem(0, "Dashboard", "assets/svg/Menu icon.svg",()=> DashBoard()),

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
                    buildSubMenuItem(0, "My Leads", "assets/svg/my_leads.svg",() => AssignedLeads()),
                    buildSubMenuItem(1, "Generate New Lead", "assets/svg/new_lead.svg",() => AddLeader()),
                  ],

                  buildMenuItem(2, "Follow ups", "assets/svg/follow.svg",() => FollowUp()),
                  buildMenuItem(3, "Properties", "assets/svg/properties.svg",() => Property()),
                  buildMenuItem(4, "Settings", "assets/svg/settings.svg", () => Property()),
                  buildMenuItem(5, "Logout", "assets/svg/logout.svg", () => Property()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  /// Method to Build Main Menu Items
  Widget buildMenuItem(int index, String text, String iconPath,Widget classCall()) {
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
          MaterialPageRoute(builder: (context)=>classCall()),
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
  Widget buildSubMenuItem(int subIndex, String text, String iconPath, Widget classCall()) {
    bool isSelected = _selectedSubIndex == subIndex; // Check if submenu is selected

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedSubIndex = subIndex;
          _selectedIndex = 1; // Keep Leads highlighted
        });
        Navigator.pop(context); // Close drawer on selection
        Navigator.push(context, MaterialPageRoute(builder: (context) => classCall()));
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
