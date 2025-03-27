import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/login%20screens/login.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 245, 248, 1),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;
          double textScaleFactor = MediaQuery.of(context).textScaleFactor;

          return SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.08, // Responsive padding
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svg/onboarding1.svg',
                      width: screenWidth * 0.55, // Adjusted for all screens
                      height: screenHeight * 0.55,
                    ),
                    SizedBox(height: screenHeight * 0.03), // Dynamic spacing
                    Text(
                      "Supercharge Your Sales Journey!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 21 * textScaleFactor,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      "Manage leads, track follow-ups, and close \ndeals faster—all in one place.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 16 * textScaleFactor,
                        color: const Color.fromRGBO(138, 155, 172, 1),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.05),
                    
                    /// **Responsive Button**
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: Container(
                        height: screenHeight * 0.07, // Ensures proper height across devices
                        width: screenWidth * 0.5, // Responsive width
                        constraints: const BoxConstraints(
                          minWidth: 200, // Ensures button does not shrink too much
                          maxWidth: 300, // Prevents excessive stretching on large screens
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(33, 90, 146, 1),
                        ),
                        child: FittedBox(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 20,
                            ),
                            child: Text(
                              "Get Started",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w600,
                                fontSize: 18 * textScaleFactor, // Scales based on screen size
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
