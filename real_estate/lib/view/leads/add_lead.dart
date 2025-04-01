import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/view/common/bottom_nav_bar.dart';
import 'package:real_estate/view/common/custom_appbar.dart';
import 'package:real_estate/view/common/custom_button.dart';
import 'package:real_estate/view/common/custom_text.dart';

class AddLeader extends StatefulWidget {
  const AddLeader({super.key});

  @override
  State<AddLeader> createState() => _AddLeaderState();
}

class _AddLeaderState extends State<AddLeader> {
  String? selectedProperty;
  String? selectedStatus;
  final List<String> propertyList = ['Apartment', 'Villa', 'Commercial'];
  final List<String> statusList = ['New', 'Interested', 'Finalized'];
  TextEditingController name = TextEditingController();
  TextEditingController phoneno = TextEditingController();
  TextEditingController mainID = TextEditingController();
  TextEditingController noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    TextScaler textScaler = MediaQuery.of(context).textScaler;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 245, 248, 1),
      appBar: CustomAppBar(
        title: "Add Leads",
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Add Lead",
              fontWeight: FontWeight.w600,
              fontSize: textScaler.scale(22.0),
              color: const Color.fromRGBO(21, 95, 165, 1),
            ),
            SizedBox(height: screenHeight * 0.03),

            // Name Field
            buildInputField(
              "Enter Name",
              "Full Name",
              screenWidth,
              name,
              textScaler,
            ),

            SizedBox(height: screenHeight * 0.03),

            // Phone & Email Fields
            Row(
              children: [
                Expanded(
                  child: buildInputField(
                    "Enter Phone Number",
                    "Phone Number",
                    screenWidth,
                    phoneno,
                    textScaler,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: buildInputField(
                    "Enter Mail",
                    "Mail",
                    screenWidth,
                    mainID,
                    textScaler,
                  ),
                ),
              ],
            ),

            SizedBox(height: screenHeight * 0.03),

            // Property & Status Fields
            Row(
              children: [
                Expanded(
                  child: buildDropdownField(
                    "Property Interested In",
                    propertyList,
                    selectedProperty,
                    (value) {
                      setState(() {
                        selectedProperty = value;
                      });
                    },
                    screenWidth,
                    textScaler,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: buildDropdownField(
                    "Status",
                    statusList,
                    selectedStatus,
                    (value) {
                      setState(() {
                        selectedStatus = value;
                      });
                    },
                    screenWidth,
                    textScaler,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),

            // Name Field
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Note",
                  fontWeight: FontWeight.w400,
                  fontSize: textScaler.scale(12.0),
                  color: const Color.fromRGBO(26, 97, 164, 1),
                ),
                SizedBox(height: screenHeight * 0.01),

                Container(
                  height: screenWidth * 0.2,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 228, 235, 240),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    controller: noteController,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    style: GoogleFonts.dmSans(
                      fontSize: textScaler.scale(
                        14.0,
                      ), // Responsive font size when user types
                      fontWeight: FontWeight.w400,
                      color: Colors.black, // Adjust text color if needed
                    ),
                    decoration: InputDecoration(
                      hintText: "Type Here",
                      hintStyle: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w400,
                        fontSize: textScaler.scale(
                          14.0,
                        ), // Keep hint text slightly smaller
                        color: const Color.fromRGBO(179, 189, 199, 1),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.06),

            ///ADD LEAD
            CustomButton(
              text: "Add Lead",
              height: 44.09,
              fontSize: 14,
              width: 212,
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 1),
    );
  }

  Widget buildInputField(
    String label,
    String hint,
    double screenWidth,
    TextEditingController controller,
    dynamic textScaler,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: label,
          fontWeight: FontWeight.w400,
          fontSize: textScaler.scale(14.0),
          color: const Color.fromRGBO(26, 97, 164, 1),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          style: GoogleFonts.dmSans(
            fontSize: textScaler.scale(
              14.0,
            ), // Increase text size when user types
            fontWeight: FontWeight.w400,
            color: Colors.black, // Adjust color if needed
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(255, 228, 235, 240),
            hintText: hint,
            hintStyle: GoogleFonts.dmSans(
              fontWeight: FontWeight.w400,
              fontSize: textScaler.scale(
                14.0,
              ), // Hint text remains slightly smaller
              color: const Color.fromRGBO(179, 189, 199, 1),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDropdownField(
    String label,
    List<String> items,
    String? value,
    void Function(String?) onChanged,
    double screenWidth,
    dynamic textScaler,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: label,
          fontWeight: FontWeight.w400,
          fontSize: textScaler.scale(14.0),
          color: const Color.fromRGBO(26, 97, 164, 1),
        ),
        const SizedBox(height: 8),
        Container(
          // height: screenWidth*0.05,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 228, 235, 240),
            borderRadius: BorderRadius.circular(8),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: value,
                        icon: const SizedBox.shrink(),
                        isExpanded: true,
                        hint: CustomText(
                          text: "Select",
                          fontWeight: FontWeight.w500,
                          fontSize: textScaler.scale(14.0),
                          color: const Color.fromRGBO(179, 189, 199, 1),
                        ),
                        items:
                            items.map((String item) {
                              return DropdownMenuItem<String>(
                                value: item,
                                child: CustomText(
                                  text: item,
                                  fontSize: textScaler.scale(14.0),

                                  // overflow:
                                  //     TextOverflow
                                  //         .ellipsis, // Prevents text overflow
                                ),
                              );
                            }).toList(),
                        onChanged: onChanged,
                      ),
                    ),
                  ),
                  const Icon(Icons.expand_more, color: Colors.grey),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
