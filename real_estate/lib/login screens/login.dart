import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:real_estate/login%20screens/verifyPhone.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? value = false;
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;
        double textScaleFactor = screenHeight * 0.0012;

        return Scaffold(
          backgroundColor: Color.fromRGBO(242, 245, 248, 1),
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.1,
                    vertical: screenHeight * 0.03,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: SvgPicture.asset(
                          "assets/svg/login.svg",
                          height: screenHeight * 0.4,
                          width: screenWidth * 0.4,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Text(
                        "Login",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 40 * textScaleFactor,
                          color: Color.fromRGBO(33, 90, 146, 1),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        "Please Enter Your Phone Number",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 20 * textScaleFactor,
                          color: Color.fromRGBO(138, 155, 172, 1),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.04),
                      Text(
                        "Phone number",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 16 * textScaleFactor,
                          color: Color.fromRGBO(33, 90, 146, 1),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      IntlPhoneField(
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          labelStyle: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 18 * textScaleFactor,
                            color: Color.fromRGBO(183, 199, 215, 1),
                          ),
                          border: OutlineInputBorder(
                            gapPadding: 10,
                            borderSide: BorderSide(
                              color: const Color.fromRGBO(220, 230, 239, 1),
                            ),
                          ),
                        ),
                        initialCountryCode: 'IN',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Checkbox(
                            activeColor: Color.fromRGBO(33, 90, 146, 1),
                            tristate: true,
                            value: value,
                            onChanged: (bool? newValue) {
                              setState(() {
                                value = newValue;
                              });
                            },
                          ),
                          const SizedBox(width: 5),
                          Flexible(
                            child: Text(
                              "Keep me signed in",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 16 * textScaleFactor,
                                color: Color.fromRGBO(138, 155, 172, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Verify(),
                            ),
                          );
                        },
                        child: Center(
                          child: Container(
                            height: 55.32,
                            width: 379,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(7),
                              ),
                              color: Color.fromRGBO(33, 90, 146, 1),
                            ),
                            child: Text(
                              "Get OTP",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w600,
                                fontSize: 18 * textScaleFactor,
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
            ),
          ),
        );
      },
    );
  }
}
