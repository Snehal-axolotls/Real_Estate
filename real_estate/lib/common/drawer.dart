import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate/common/custom_text.dart';
import 'package:real_estate/dashboard/dashboard.dart';
import 'package:real_estate/followup/follow_ups.dart';
import 'package:real_estate/leads/add_lead.dart';
import 'package:real_estate/leads/assigned_lead.dart';
import 'package:real_estate/login%20screens/login.dart';
import 'package:real_estate/properties/properties.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int? _selectedIndex = 0;
  int? _selectedSubIndex;
  bool _isLeadsExpanded = false;

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
    double baseSize = min(width, height);
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Drawer(
      width: MediaQuery.of(context).size.width * 0.75,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            color: const Color.fromRGBO(14, 39, 63, 1),
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.03,
              vertical: height * 0.05,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  /// Profile Section
                  Padding(
                    padding: EdgeInsets.only(top: baseSize * 0.02),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: baseSize * 0.06,
                          backgroundColor: Colors.grey[300],
                          child: SvgPicture.asset(
                            "assets/svg/Avatar.svg",
                            fit: BoxFit.contain,
                            width: baseSize * 0.1,
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "John Doe",
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize:
                                  max(baseSize * 0.035, 16) * textScaleFactor,
                            ),
                            CustomText(
                              text: "+91 8888888888",
                              color: const Color.fromRGBO(209, 211, 212, 1),
                              fontWeight: FontWeight.w400,
                              fontSize:
                                  max(baseSize * 0.02, 12) * textScaleFactor,
                            ),
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.close,
                            color: Colors.grey[400],
                            size: baseSize * 0.05,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  SizedBox(height: baseSize * 0.04),
                  
                  /// Menu Items
                  buildMenuItem(
                    0,
                    "Dashboard",
                    "assets/svg/Menu icon.svg",
                    () => DashBoard(),
                    textScaleFactor,
                  ),
                  
                  /// Leads Dropdown
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isLeadsExpanded = !_isLeadsExpanded;
                        _selectedIndex = _isLeadsExpanded ? 1 : null;
                      });
                    },
                    child: buildExpandableMenuItem(
                      "Leads",
                      "assets/svg/Icon- Outline.svg",
                      _isLeadsExpanded,
                      baseSize,
                      textScaleFactor,
                      _isLeadsExpanded,
                      showArrow: true, // ✅ Show arrow for Leads only
                    ),
                  ),
                  if (_isLeadsExpanded) ...[
                    buildSubMenuItem(
                      0,
                      "My Leads",
                      "assets/svg/my_leads.svg",
                      () => AssignedLeads(),
                      textScaleFactor,
                    ),
                    buildSubMenuItem(
                      1,
                      "Generate New Lead",
                      "assets/svg/new_lead.svg",
                      () => AddLeader(),
                      textScaleFactor,
                    ),
                  ],
                  
                  buildMenuItem(
                    2,
                    "Follow ups",
                    "assets/svg/follow.svg",
                    () => FollowUp(),
                    textScaleFactor,
                  ),
                  buildMenuItem(
                    3,
                    "Properties",
                    "assets/svg/properties.svg",
                    () => Property(),
                    textScaleFactor,
                  ),
                  buildMenuItem(
                    4,
                    "Settings",
                    "assets/svg/settings.svg",
                    () => Property(),
                    textScaleFactor,
                  ),
                  buildMenuItem(
                    5,
                    "Logout",
                    "assets/svg/logout.svg",
                    () => LoginPage(),
                    textScaleFactor,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildMenuItem(
    int index,
    String text,
    String iconPath,
    Widget Function() classCall,
    double textScaleFactor,
  ) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          _selectedSubIndex = null;
          _isLeadsExpanded = false;
        });
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => classCall()),
        );
      },
      child: buildExpandableMenuItem(
        text,
        iconPath,
        isSelected,
        min(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height,
        ),
        textScaleFactor,
        _isLeadsExpanded,
      ),
    );
  }

  Widget buildSubMenuItem(
    int subIndex,
    String text,
    String iconPath,
    Widget Function() classCall,
    double textScaleFactor,
  ) {
    bool isSelected = _selectedSubIndex == subIndex;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedSubIndex = subIndex;
          _selectedIndex = 1;
        });
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => classCall()),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(left: 40, top: 8, bottom: 5),
        child: buildExpandableMenuItem(
          text,
          iconPath,
          isSelected,
          min(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height,
          ),
          textScaleFactor,
          _isLeadsExpanded,
        ),
      ),
    );
  }

  Widget buildExpandableMenuItem(
    String text,
    String iconPath,
    bool isSelected,
    double baseSize,
    double textScaleFactor,
    bool isExpanded, {
    bool showArrow = false,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(
        vertical: baseSize * 0.015,
        horizontal: baseSize * 0.03,
      ),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white.withOpacity(0.2) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                iconPath,
                color: Colors.white,
                width: baseSize * 0.06,
              ),
              const SizedBox(width: 10),
              CustomText(
                text: text,
                fontWeight: FontWeight.w600,
                fontSize: max(baseSize * 0.03, 14) * textScaleFactor,
                color: Colors.white,
              ),
            ],
          ),
          if (showArrow) // ✅ Show expand/collapse icon only for Leads
            Icon(
              isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
        ],
      ),
    );
  }
}
