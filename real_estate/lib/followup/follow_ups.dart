

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/common/bottom_nav_bar.dart';
import 'package:real_estate/dashboard/dashboard.dart';

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
        double screenWidth = constraints.maxWidth;
        double screenHeight =constraints.maxHeight;
        return Scaffold(
          backgroundColor: Color.fromRGBO(242, 245, 248, 1),
          appBar: AppBar(
            title: Text(
              "Follow ups",
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w600,
                fontSize: 19,
                color: Colors.white,
              ),
            ),
            backgroundColor: const Color.fromRGBO(14, 39, 63, 1),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => DashBoard()),
                (Route<dynamic> route) => false,
              ),
            ),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            clipBehavior: Clip.antiAlias,
            child: DataTable(
              columnSpacing: 20,
              headingRowHeight: 65,
              // ignore: deprecated_member_use
              dataRowHeight: 65,
              dividerThickness: 1.2, 
              headingRowColor: WidgetStateColor.resolveWith(
                (states) => Color.fromRGBO(212,228,243,1,), 
              ),

              columns: [
                DataColumn(
                  label: SizedBox(
                    width: screenWidth*0.2,
                    child: Text(
                      "Name",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.04,
                        color: Color.fromRGBO(8, 47, 84, 1),
                      ),
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Date & Time",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth * 0.04,
                      color: Color.fromRGBO(8, 47, 84, 1),
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Followup",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth * 0.04,
                      color: Color.fromRGBO(8, 47, 84, 1),
                    ),
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
                              SizedBox(width: 8),
                              Text(
                                entry["name"]!,
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: screenWidth * 0.03,
                                  color: Color.fromRGBO(62, 76, 90, 1),
                                ),
                                softWrap: true,
                              ),
                            ],
                          ),
                        ),
                        DataCell(
                          Text(
                            entry["date_time"]!,
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: screenWidth * 0.03,
                              color: Color.fromRGBO(62, 76, 90, 1),
                            ),
                          ),
                        ),
                        DataCell(
                          Text(
                            entry["followup"]!,
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: screenWidth * 0.03,
                              color: Color.fromRGBO(62, 76, 90, 1),
                            ),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
            ),
          ),
          bottomNavigationBar: CustomBottomNavBar(selectedIndex: 3)        
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
