import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/dashboard/dashboard.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {

        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;

        return Scaffold(
          backgroundColor: Color.fromRGBO(242, 245, 248, 1),
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(242, 245, 248, 1),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              color: Color.fromRGBO(33, 90, 146, 1),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 80),
                  Text(
                    "OTP Verification",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 36,
                      color: Color.fromRGBO(33, 90, 146, 1),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Flexible(
                    child: Text(
                      "Enter the verification code we just sent on your phone number.",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth*0.045,
                        color: Color.fromRGBO(138, 155, 172, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  OtpTextField(
                    fieldWidth: screenWidth*0.16,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    fieldHeight: screenHeight*0.1,
                    numberOfFields: 4,
                    borderColor: Color.fromRGBO(38, 147, 255, 1),
                    showFieldAsBox: true,
                    // textStyle: TextStyle(
                    //   color: Color.fromRGBO(33, 90, 146, 1),
                    // ),
                    textStyle: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: Color.fromRGBO(8, 104, 199, 1),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Text(
                      "00:24",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color.fromRGBO(138, 155, 172, 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          "Didn’t receive the code? ",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color.fromRGBO(138, 155, 172, 1),
                          ),
                        ),
                      ),
                      Text(
                        "Resend",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color.fromRGBO(47, 112, 175, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DashBoard()),
                      );
                    },
                    child: Center(
                      child: Container(
                        height: 55.32,
                        width: 379,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          color: Color.fromRGBO(33, 90, 146, 1),
                        ),
                        child: Text(
                          "Verify",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: const Color.fromRGBO(255, 255, 255, 1),
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
      }
    );
  }
}
