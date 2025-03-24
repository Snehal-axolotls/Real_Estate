import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

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
                  Row(
                    children: [
                      Container(
                        height: Height * 0.17,
                        width: Width * 0.17,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: SvgPicture.asset(
                          "assets/svg/Avatar.svg",
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(width: Width * 0.04),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "John Doe",
                            style: GoogleFonts.dmSans(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: Height * 0.025,
                            ),
                          ),
                          Text(
                            "+91 8888888888",
                            style: GoogleFonts.dmSans(
                              color: Color.fromRGBO(209, 211, 212, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: Height * 0.02,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.close,
                        color: Color.fromRGBO(209, 211, 212, 1),
                        size: Width * 0.1,
                      ),
                    ],
                  ),

                  SizedBox(height: Height * 0.01),

                  Row(
                    children: [
                      SvgPicture.asset("assets/svg/Menu icon.svg"),
                      SizedBox(width: Width * 0.02),
                      Text(
                        "Dashboard",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w600,
                          fontSize: Height * 0.02,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(height:Height*0.04),
                  Row(
                    children: [
                      SvgPicture.asset("assets/svg/Icon- Outline.svg"),
                      SizedBox(width: Width * 0.02),
                      Text(
                        "Leads",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w600,
                          fontSize: Height * 0.02,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height:Height*0.04),
                  Row(
                    children: [
                      SvgPicture.asset("assets/svg/follow.svg"),
                      SizedBox(width: Width * 0.02),
                      Text(
                        "Follow ups",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w600,
                          fontSize: Height * 0.02,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height:Height*0.04),
                  Row(
                    children: [
                      SvgPicture.asset("assets/svg/properties.svg"),
                      SizedBox(width: Width * 0.02),
                      Text(
                        "Properties",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w600,
                          fontSize: Height * 0.02,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height:Height*0.04),
                  Row(
                    children: [
                      SvgPicture.asset("assets/svg/settings.svg"),
                      SizedBox(width: Width * 0.02),
                      Text(
                        "Settings",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w600,
                          fontSize: Height * 0.02,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height:Height*0.04),
                  Row(
                    children: [
                      SvgPicture.asset("assets/svg/logout.svg"),
                      SizedBox(width: Width * 0.02),
                      Text(
                        "Logout",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w600,
                          fontSize: Height * 0.02,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
