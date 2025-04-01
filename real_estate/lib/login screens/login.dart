import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:real_estate/common/custom_button.dart';
import 'package:real_estate/common/custom_text.dart';
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
          backgroundColor: Colors.white,
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
                      CustomText(
                        text: "Login",
                        fontWeight: FontWeight.w600,
                        fontSize: 40 * textScaleFactor,
                        color: Color.fromRGBO(33, 90, 146, 1),
                      ),

                      SizedBox(height: screenHeight * 0.01),
                      CustomText(
                        text: "Please Enter Your Phone Number",
                        fontWeight: FontWeight.w500,
                        fontSize: 20 * textScaleFactor,
                        color: Color.fromRGBO(138, 155, 172, 1),
                      ),

                      SizedBox(height: screenHeight * 0.04),
                      CustomText(
                        text: "Phone number",
                        fontWeight: FontWeight.w600,
                        fontSize: 16 * textScaleFactor,
                        color: Color.fromRGBO(33, 90, 146, 1),
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
                            child: CustomText(
                              text: "Keep me signed in",

                              fontWeight: FontWeight.w500,
                              fontSize: 16 * textScaleFactor,
                              color: Color.fromRGBO(138, 155, 172, 1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        text: "Get OTP",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Verify(),
                            ),
                          );
                        },
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
