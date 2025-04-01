import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/view/common/custom_button.dart';
import 'package:real_estate/view/common/custom_text.dart';
import 'package:real_estate/view/dashboard/dashboard.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    TextScaler textScaler = MediaQuery.of(context).textScaler;

    return Scaffold(
      backgroundColor:  Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color.fromRGBO(33, 90, 146, 1),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.08,
            vertical: screenHeight * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.1),
              CustomText(
                text: "OTP Verification",

                fontWeight: FontWeight.w600,
                fontSize: textScaler.scale(36),
                color: const Color.fromRGBO(33, 90, 146, 1),
              ),
              SizedBox(height: screenHeight * 0.02),
              CustomText(
                text:
                    "Enter the verification code we just sent on your phone number.",
                    textAlign: TextAlign.start,
                fontWeight: FontWeight.w500,
                fontSize: textScaler.scale(20),
                color: const Color.fromRGBO(138, 155, 172, 1),
              ),
              SizedBox(height: screenHeight * 0.05),

              /// OTP Input Field
              Center(
                child: OtpTextField(
                  fieldWidth: screenWidth * 0.15,
                  fieldHeight: screenWidth * 0.15,
                  margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                  numberOfFields: 4,
                  borderColor: const Color.fromRGBO(38, 147, 255, 1),
                  showFieldAsBox: true,
                  textStyle: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w400,
                    fontSize: textScaler.scale(screenWidth * 0.06),
                    color: const Color.fromRGBO(8, 104, 199, 1),
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.04),

              Center(
                child: CustomText(
                  text: "00:24",
                  fontWeight: FontWeight.w500,
                  fontSize: textScaler.scale(18),
                  color: const Color.fromRGBO(138, 155, 172, 1),
                ),
              ),

              SizedBox(height: screenHeight * 0.02),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "Didn’t receive the code? ",
                    fontWeight: FontWeight.w600,
                    fontSize: textScaler.scale(16),
                    color: const Color.fromRGBO(138, 155, 172, 1),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Resend OTP logic here
                    },
                    child: CustomText(
                      text: "Resend",

                      fontWeight: FontWeight.w600,
                      fontSize: textScaler.scale(16),
                      color: const Color.fromRGBO(47, 112, 175, 1),
                    ),
                  ),
                ],
              ),

              SizedBox(height: screenHeight * 0.05),

              /// Verify Button
              CustomButton(
                text: "Verify",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DashBoard()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
