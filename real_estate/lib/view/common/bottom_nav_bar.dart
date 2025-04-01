import 'package:flutter/material.dart';
import 'package:real_estate/view/leads/assigned_lead.dart';
import 'package:real_estate/view/dashboard/dashboard.dart';
import 'package:real_estate/view/followup/follow_ups.dart';
import 'package:real_estate/view/profile/profile.dart';
import 'package:real_estate/view/properties/properties.dart';

class CustomBottomNavBar extends StatefulWidget {
  final dynamic selectedIndex;

  const CustomBottomNavBar({super.key, required this.selectedIndex});

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  late int _selectedIndex;

   @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  List<Widget> pages = [
    DashBoard(),
    AssignedLeads(),
    Property(),
    FollowUp(),
    Profile(),
  ];

  List<String> labels = [
    "Dashboard",
    "Leads",
    "Properties",
    "Follow ups",
    "Profile",
  ];
  List<IconData> icons = [
    Icons.dashboard_rounded,
    Icons.groups_2_outlined,
    Icons.home_outlined,
    Icons.calendar_month_outlined,
    Icons.person_outline,
  ];

  @override
  Widget build(BuildContext context) {
    // double Height = MediaQuery.of(context).size.height;
    // double Width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25), // Rounded top-left corner
          topRight: Radius.circular(25), // Rounded top-right corner
        ),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromRGBO(37, 89, 138, 1),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          // onTap: (index) {
          //   setState(() {
          //     _selectedIndex = index;
          //     Navigator.push(context,
          //     MaterialPageRoute(builder: (context)=>pages[index]));
          //   });
          // },
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => pages[index]),
            );
          },

          items: List.generate(5, (index) {
            bool isSelected = _selectedIndex == index;
            return BottomNavigationBarItem(
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  if (isSelected)
                    Positioned(
                      top: -10, // Moves the indicator above the icon
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 5,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(37, 89, 138, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  Icon(icons[index], size: 24),
                ],
              ),
              label: labels[index],
            );
          }),
        ),
      ),
    );
  }
}
