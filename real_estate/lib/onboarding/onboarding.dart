import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate/common/custom_button.dart';
import 'package:real_estate/common/custom_text.dart';
import 'package:real_estate/login%20screens/login.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    CustomText(
                      text: "Supercharge Your Sales Journey!",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    CustomText(
                      text: "Manage leads, track follow-ups, and close \ndeals faster—all in one place.",
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w400,
                        fontSize: 16 * textScaleFactor,
                        color: const Color.fromRGBO(138, 155, 172, 1),
                    ),
                    
                    SizedBox(height: screenHeight * 0.05),

                    CustomButton(
                      text: "Get Started",
                      width: 213,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
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
