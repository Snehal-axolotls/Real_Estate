import 'package:flutter/material.dart';
import 'package:real_estate/view/common/bottom_nav_bar.dart';
import 'package:real_estate/view/common/custom_appbar.dart';
import 'package:real_estate/view/common/custom_text.dart';

class FollowUp extends StatefulWidget {
  const FollowUp({super.key});

  @override
  State<FollowUp> createState() => _FollowUpState();
}

class _FollowUpState extends State<FollowUp> {
  final List<Map<String, String>> data = const [
    {
      "name": "John Doe",
      "date_time": "12 March 2023, 3:00PM",
      "followup": "Call regarding Villa A.",
      "status": "red",
    },
    {
      "name": "John Doe",
      "date_time": "12 March 2023, 3:00PM",
      "followup": "Call regarding Villa A.",
      "status": "purple",
    },
    {
      "name": "John Doe",
      "date_time": "12 March 2023, 3:00PM",
      "followup": "Call regarding Villa A.",
      "status": "green",
    },
    {
      "name": "John Doe",
      "date_time": "12 March 2023, 3:00PM",
      "followup": "Call regarding Villa A.",
      "status": "green",
    },
    {
      "name": "John Doe",
      "date_time": "12 March 2023, 3:00PM",
      "followup": "Call regarding Villa A.",
      "status": "orange",
    },
    {
      "name": "John Doe",
      "date_time": "12 March 2023, 3:00PM",
      "followup": "Call regarding Villa A.",
      "status": "green",
    },
    {
      "name": "John Doe",
      "date_time": "12 March 2023, 3:00PM",
      "followup": "Call regarding Villa A.",
      "status": "orange",
    },
    {
      "name": "John Doe",
      "date_time": "12 March 2023, 3:00PM",
      "followup": "Call regarding Villa A.",
      "status": "purple",
    },
    {
      "name": "John Doe",
      "date_time": "12 March 2023, 3:00PM",
      "followup": "Call regarding Villa A.",
      "status": "green",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        TextScaler textScaler = MediaQuery.of(context).textScaler;
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;

        return Scaffold(
          backgroundColor: Color.fromRGBO(242, 245, 248, 1),
          appBar: CustomAppBar(title: "Follow ups"),
          body: SizedBox(
            width: screenWidth * 1.2,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                clipBehavior: Clip.antiAlias,
                child: DataTable(
                  columnSpacing: screenWidth * 0.05,
                  headingRowHeight: screenHeight * 0.08,
                  dataRowHeight: screenHeight * 0.08,
                  dividerThickness: 1.2,
                  headingRowColor: WidgetStateColor.resolveWith(
                    (states) => Color.fromRGBO(212, 228, 243, 1),
                  ),
                  columns: [
                    DataColumn(
                      label: CustomText(
                        text : "Name",
                          fontWeight: FontWeight.w500,
                          fontSize: textScaler.scale(15),
                          color: Color.fromRGBO(8, 47, 84, 1),
                        
                      ),
                    ),
                    DataColumn(
                      label: SizedBox(
                        // ✅ Replace Flexible with SizedBox
                        width: screenWidth * 0.25,
                        child: CustomText(
                          text : "Date & Time",
                            fontWeight: FontWeight.w500,
                            fontSize: textScaler.scale(15),
                            color: Color.fromRGBO(8, 47, 84, 1),
                          
                        ),
                      ),
                    ),
                    DataColumn(
                      label: CustomText(
                        text : "Followup",
                          fontWeight: FontWeight.w500,
                          fontSize: textScaler.scale(15),
                          color: Color.fromRGBO(8, 47, 84, 1),
                        
                      ),
                    ),
                  ],
                  rows:
                      data.map((entry) {
                        return DataRow(
                          cells: [
                            DataCell(
                              Row(
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: getColor(entry["status"]!),
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.02),
                                  Expanded(
                                    // ✅ Use Expanded inside Row
                                    child: CustomText(
                                      text : entry["name"]!,
                                        fontWeight: FontWeight.w500,
                                        fontSize: textScaler.scale(12),
                                        color: Color.fromRGBO(62, 76, 90, 1),
                                      
                                      softWrap: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            DataCell(
                              SizedBox(
                                // ✅ Replace Flexible with SizedBox
                                width: screenWidth * 0.25,
                                child: CustomText(
                                  text : entry["date_time"]!,
                                    fontWeight: FontWeight.w500,
                                    fontSize: textScaler.scale(12),
                                    color: Color.fromRGBO(62, 76, 90, 1),
                                  
                                ),
                              ),
                            ),
                            DataCell(
                              CustomText(
                                text : entry["followup"]!,
                                  fontWeight: FontWeight.w500,
                                  fontSize: textScaler.scale(12),
                                  color: Color.fromRGBO(62, 76, 90, 1),
                                
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                ),
              ),
            ),
          ),
          bottomNavigationBar: CustomBottomNavBar(selectedIndex: 3),
        );
      },
    );
  }

  Color getColor(String status) {
    switch (status) {
      case "red":
        return Colors.red;
      case "purple":
        return Colors.purple;
      case "green":
        return Colors.green;
      case "orange":
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }
}
