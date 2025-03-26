import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/common/bottom_nav_bar.dart';

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

    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 245, 248, 1),
      appBar: AppBar(
        title: Text(
          "Add Lead",
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w600,
            fontSize: 19,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromRGBO(14, 39, 63, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add Lead",
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w600,
                fontSize: screenWidth * 0.05,
                color: const Color.fromRGBO(21, 95, 165, 1),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),

            // Name Field
            buildInputField("Enter Name", "Full Name", screenWidth, name),

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
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: buildInputField(
                    "Enter Mail",
                    "Mail",
                    screenWidth,
                    mainID,
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
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),

            // Name Field
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Note",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.035,
                    color: const Color.fromRGBO(26, 97, 164, 1),
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),

                // Container(
                //   height: 125,
                //   decoration: BoxDecoration(
                //     color: const Color.fromARGB(255, 228, 235, 240),
                //     borderRadius: BorderRadius.circular(8),
                //   ),
                //   child: TextField(
                //     controller: noteController,
                //     keyboardType: TextInputType.multiline,
                //     maxLines: null,
                //     decoration: InputDecoration(
                //       hintText: "Type Here",
                //       hintStyle: GoogleFonts.dmSans(
                //         fontWeight: FontWeight.w400,
                //         fontSize: screenWidth * 0.03,
                //         color: const Color.fromRGBO(179, 189, 199, 1),
                //       ),
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(8),
                //         borderSide: BorderSide.none,
                //       ),
                //     ),
                //   ),
                // ),
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
                      fontSize:
                          screenWidth *
                          0.03, // Responsive font size when user types
                      fontWeight: FontWeight.w400,
                      color: Colors.black, // Adjust text color if needed
                    ),
                    decoration: InputDecoration(
                      hintText: "Type Here",
                      hintStyle: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w400,
                        fontSize:
                            screenWidth *
                            0.03, // Keep hint text slightly smaller
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
            GestureDetector(
              onTap: () {
                // print("Name: ${name.text}");
                // print("Phone: ${phoneno.text}");
                // print("Email: ${mainID.text}");
                // print("Property: $selectedProperty");
                // print("Status: $selectedStatus");
                // print("Note: ${noteController.text}");
              },
              child: Center(
                child: Container(
                  height: screenHeight * 0.05,
                  width: screenWidth * 0.5,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Color.fromRGBO(33, 90, 146, 1),
                  ),
                  child: Text(
                    "Add Lead",
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
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 1),
    );
  }

  // Input Field
  // Widget buildInputField(
  //   String label,
  //   String hint,
  //   double screenWidth,
  //   TextEditingController controller,
  // ) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         label,
  //         style: GoogleFonts.dmSans(
  //           fontWeight: FontWeight.w400,
  //           fontSize: screenWidth * 0.035,
  //           color: const Color.fromRGBO(26, 97, 164, 1),
  //         ),
  //       ),
  //       SizedBox(height: 8),
  //       TextField(
  //         controller: controller,
  //         decoration: InputDecoration(
  //           filled: true,
  //           fillColor: const Color.fromARGB(255, 228, 235, 240),
  //           hintText: hint,
  //           hintStyle: GoogleFonts.dmSans(
  //             fontWeight: FontWeight.w400,
  //             fontSize: screenWidth * 0.03,
  //             color: const Color.fromRGBO(179, 189, 199, 1),
  //           ),
  //           border: OutlineInputBorder(
  //             borderRadius: BorderRadius.circular(8),
  //             borderSide: BorderSide.none,
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget buildInputField(
    String label,
    String hint,
    double screenWidth,
    TextEditingController controller,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w400,
            fontSize: screenWidth * 0.035,
            color: const Color.fromRGBO(26, 97, 164, 1),
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          style: GoogleFonts.dmSans(
            fontSize: screenWidth * 0.03, // Increase text size when user types
            fontWeight: FontWeight.w400,
            color: Colors.black, // Adjust color if needed
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(255, 228, 235, 240),
            hintText: hint,
            hintStyle: GoogleFonts.dmSans(
              fontWeight: FontWeight.w400,
              fontSize:
                  screenWidth * 0.03, // Hint text remains slightly smaller
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

  // Widget buildDropdownField(
  //   String label,
  //   List<String> items,
  //   String? value,
  //   void Function(String?) onChanged,
  //   double screenWidth,
  // ) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         label,
  //         style: GoogleFonts.dmSans(
  //           fontWeight: FontWeight.w400,
  //           fontSize: screenWidth * 0.035,
  //           color: const Color.fromRGBO(26, 97, 164, 1),
  //         ),
  //       ),
  //       const SizedBox(height: 8),
  //       Container(
  //         padding: const EdgeInsets.symmetric(horizontal: 12),
  //         decoration: BoxDecoration(
  //           color: const Color.fromARGB(255, 228, 235, 240),
  //           borderRadius: BorderRadius.circular(8),
  //         ),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Expanded(
  //               child: DropdownButtonHideUnderline(
  //                 child: DropdownButton<String>(
  //                   value: value,
  //                   icon: SizedBox.shrink(),
  //                   isExpanded: true,
  //                   hint: Text(
  //                     "Select",
  //                     style: GoogleFonts.dmSans(
  //                       fontWeight: FontWeight.w400,
  //                       fontSize: screenWidth * 0.03,
  //                       color: const Color.fromRGBO(179, 189, 199, 1),
  //                     ),
  //                   ),
  //                   items:
  //                       items.map((String item) {
  //                         return DropdownMenuItem<String>(
  //                           value: item,
  //                           child: Text(
  //                             item,
  //                             style: GoogleFonts.dmSans(fontSize: 14),
  //                           ),
  //                         );
  //                       }).toList(),
  //                   onChanged: onChanged,
  //                 ),
  //               ),
  //             ),
  //             const Icon(Icons.expand_more, color: Colors.grey),
  //           ],
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget buildDropdownField(
    String label,
    List<String> items,
    String? value,
    void Function(String?) onChanged,
    double screenWidth,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w400,
            fontSize: screenWidth * 0.035,
            color: const Color.fromRGBO(26, 97, 164, 1),
          ),
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
                        hint: Text(
                          "Select",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.03,
                            // fontSize:
                            //     constraints.maxWidth *
                            //     0.05, // Responsive text size
                            color: const Color.fromRGBO(179, 189, 199, 1),
                          ),
                        ),
                        items:
                            items.map((String item) {
                              return DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: GoogleFonts.dmSans(
                                    fontSize: constraints.maxWidth * 0.04,
                                  ), // Adjust text size dynamically
                                  overflow:
                                      TextOverflow
                                          .ellipsis, // Prevents text overflow
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
