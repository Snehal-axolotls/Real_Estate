import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:real_estate/bottom_nav_bar.dart';
import 'package:real_estate/lead_details.dart';

class AssignedLeads extends StatefulWidget {
  const AssignedLeads({super.key});

  @override
  State<AssignedLeads> createState() => _AssignedLeadsState();
}

class _AssignedLeadsState extends State<AssignedLeads> {
  bool isExpanded = false;
  String selectedFilter = "New";
  final List<String> filters = [
    'All',
    'New',
    'In Progress',
    'Interested',
    'Closed',
  ];
  String searchQuery = "";

  final List<Map<String, String>> leads = [
    {
      'name': 'John Doe',
      'phone': '+91 8888888888',
      'interest': '2BHK Apartment',
      'status': 'New',
      'followUp': '12th March 2025 , 3:00 PM',
    },
    {
      'name': 'Jane Smith',
      'phone': '+91 7777777777',
      'interest': '3BHK Apartment',
      'status': 'Interested',
      'followUp': '14th March 2025 , 3:00 PM',
    },
    {
      'name': 'Mark Taylor',
      'phone': '+91 9999999999',
      'interest': 'Villa',
      'status': 'In Progress',
      'followUp': '15th March 2025 , 3:00 PM',
    },
    {
      'name': 'Emma Watson',
      'phone': '+91 6666666666',
      'interest': 'Penthouse',
      'status': 'Closed',
      'followUp': '20th March 2025 , 3:00 PM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredLeads =
        leads.where((lead) {
          bool matchesStatus =
              selectedFilter == 'All' || lead['status'] == selectedFilter;
          bool matchesSearch =
              searchQuery.isEmpty ||
              lead['name']!.toLowerCase().contains(searchQuery.toLowerCase());
          return matchesStatus && matchesSearch;
        }).toList();

    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 245, 248, 1),
      appBar: AppBar(
        title: Text(
          "My Assigned Leads",
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w600,
            fontSize: 19,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromRGBO(14, 39, 63, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed:
              () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => CustomBottomNavBar()),
                (Route<dynamic> route) => false,
              ),
        ),
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.search,
                    color: Color.fromRGBO(21, 95, 165, 1),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          searchQuery = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: "Search ",
                        hintStyle: GoogleFonts.dmSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(159, 171, 183, 1),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  PopupMenuButton<String>(
                    onSelected: (value) {
                      setState(() {
                        selectedFilter = value;
                      });
                    },
                    itemBuilder:
                        (context) =>
                            filters
                                .map(
                                  (filter) => PopupMenuItem(
                                    value: filter,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          color: getStatusColor(filter),
                                          size: 12,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          filter,
                                          style: GoogleFonts.dmSans(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: getStatusColor(selectedFilter),
                            size: 12,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            selectedFilter,
                            style: GoogleFonts.dmSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Icon(
                            Icons.expand_more_rounded,
                            color: Color.fromRGBO(21, 95, 165, 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),

          // Lead Cards using ListView.builder
          Expanded(
            child: ListView.builder(
              itemCount: filteredLeads.length,
              itemBuilder: (context, index) {
                final lead = filteredLeads[index];
                return leadCard(
                  lead['name']!,
                  lead['phone']!,
                  lead['interest']!,
                  lead['status']!,
                  lead['followUp']!,
                );
              },
            ),
          ),
        ],
      ),
      // bottomNavigationBar: CustomBottomNavBar(),
    );
  }

  DateTime selectedDate = DateTime.now();

  Widget leadCard(
    String name,
    String phone,
    String interest,
    String status,
    String followUp,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      color: const Color.fromRGBO(255, 255, 255, 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.circle, color: getStatusColor(status), size: 12),
                const SizedBox(width: 5),
                Text(
                  name,
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: const Color.fromRGBO(21, 95, 165, 1),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Container(
                    child: Text(
                      "View Details",
                      style: GoogleFonts.dmSans(
                        fontSize: 9,
                        color: const Color.fromRGBO(0, 122, 255, 1),
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(
                  Icons.phone_in_talk,
                  color: Color.fromRGBO(255, 193, 0, 1),
                  size: 13,
                ),
                const SizedBox(width: 10),
                Text(
                  "Phone             :",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: const Color.fromRGBO(21, 95, 165, 1),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  phone,
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color.fromRGBO(52, 78, 104, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(
                  Icons.house_rounded,
                  color: Color.fromARGB(255, 241, 120, 111),
                  size: 13,
                ),
                const SizedBox(width: 10),
                Text(
                  "Interested In  :",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: const Color.fromRGBO(21, 95, 165, 1),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  interest,
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color.fromRGBO(52, 78, 104, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(
                  Icons.assessment_outlined,
                  color: Color.fromRGBO(57, 131, 71, 1),
                  size: 13,
                ),
                const SizedBox(width: 10),
                Text(
                  "Status             :",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: const Color.fromRGBO(21, 95, 165, 1),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  status,
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color.fromRGBO(52, 78, 104, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(
                  Icons.calendar_month,
                  color: Color.fromRGBO(117, 165, 234, 1),
                  size: 13,
                ),
                const SizedBox(width: 10),
                Text(
                  "Follow Up       :",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: const Color.fromRGBO(21, 95, 165, 1),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  followUp,
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color.fromRGBO(52, 78, 104, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            if (isExpanded) ...[
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LeadDetails()));
                    },
                    child: Container(
                      height: 25,
                      width: 75,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: const Color.fromRGBO(232, 243, 253, 1),
                      ),
                      child: Text(
                        "View Details",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 9,
                          color: const Color.fromRGBO(9, 67, 124, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder:
                            (context) => AlertDialog(
                              title: Text(
                                "Are You Sure You Want To \n Call John Doe ?",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: const Color.fromRGBO(21, 95, 165, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              content: SvgPicture.asset(
                                'assets/svg/call.svg',
                                height: 71,
                                width: 71,
                              ),
                              actions: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromRGBO(15, 192, 65, 1),
                                        Color.fromRGBO(48, 140, 74, 1),
                                      ],
                                    ),
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      shadowColor: Colors.transparent,
                                    ),
                                    child: Text(
                                      "Yes",
                                      style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: const Color.fromRGBO(
                                          255,
                                          255,
                                          255,
                                          1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      shadowColor: Colors.transparent,
                                    ),
                                    child: Text(
                                      "Cancel",
                                      style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: const Color.fromRGBO(
                                          208,
                                          100,
                                          100,
                                          1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      );
                    },
                    child: Container(
                      height: 25,
                      width: 49,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: const Color.fromRGBO(232, 243, 253, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.call,
                            color: Color.fromRGBO(9, 67, 124, 1),
                            size: 8,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Call",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 9,
                              color: const Color.fromRGBO(9, 67, 124, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder:
                            (context) => AlertDialog(
                              title: Text(
                                "Schedule Follow Up",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: const Color.fromRGBO(21, 95, 165, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              content: Column(
                                children: [
                                  const SizedBox(height: 60),
                                  Container(
                                    height: 55,
                                    width: 299,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 299,
                                          height: 60,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: 8,
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color.fromRGBO(
                                                124,
                                                143,
                                                162,
                                                1,
                                              ),
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                          child: GestureDetector(
                                            onTap: () async {
                                              DateTime? pickedDate =
                                                  await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime.now(),
                                                    firstDate: DateTime(2000),
                                                    lastDate: DateTime(2100),
                                                  );
                                              if (pickedDate != null) {
                                                setState(() {
                                                  selectedDate = pickedDate;
                                                });
                                              }
                                            },
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.calendar_month,
                                                  color: Color.fromRGBO(
                                                    8,
                                                    72,
                                                    134,
                                                    1,
                                                  ),
                                                ),
                                                SizedBox(width: 8),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Date',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    Text(
                                                      DateFormat(
                                                        'MMMM d, yyyy',
                                                      ).format(selectedDate),
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromRGBO(
                                                          8,
                                                          72,
                                                          134,
                                                          1,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Container(
                                    width: 299,
                                    height: 60,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(124, 143, 162, 1),
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: GestureDetector(
                                      onTap: () async {
                                        DateTime? pickedDate =
                                            await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(2000),
                                              lastDate: DateTime(2100),
                                            );
                                        if (pickedDate != null) {
                                          setState(() {
                                            selectedDate = pickedDate;
                                          });
                                        }
                                      },
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.access_time_outlined,
                                            color: Color.fromRGBO(
                                              8,
                                              72,
                                              134,
                                              1,
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Date',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              Text(
                                                DateFormat(
                                                  'MMMM d, yyyy',
                                                ).format(selectedDate),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromRGBO(
                                                    189,
                                                    201,
                                                    221,
                                                    1,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      left: 5,
                                      right: 5,
                                    ),
                                    child: Container(
                                      height: 104,
                                      width: 299,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(9),
                                        border: Border.all(
                                          color: Color.fromRGBO(
                                            189,
                                            201,
                                            221,
                                            1,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "Note",
                                        style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11,
                                          color: const Color.fromRGBO(
                                            189,
                                            201,
                                            221,
                                            1,
                                          ),
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              actions: [
                                Center(
                                  child: Container(
                                    height: 39,
                                    width: 212,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromRGBO(15, 192, 65, 1),
                                          Color.fromRGBO(48, 140, 74, 1),
                                        ],
                                      ),
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                      ),
                                      child: Text(
                                        "Save Reminder",
                                        style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: const Color.fromRGBO(
                                            255,
                                            255,
                                            255,
                                            1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      );
                    },
                    child: Container(
                      height: 25,
                      width: 75,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: const Color.fromRGBO(232, 243, 253, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.calendar_month,
                            color: Color.fromRGBO(9, 67, 124, 1),
                            size: 8,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Follow Up",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 9,
                              color: const Color.fromRGBO(9, 67, 124, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Color getStatusColor(String status) {
    switch (status) {
      case 'New':
        return Colors.green;
      case 'In Progress':
        return Colors.orange;
      case 'Interested':
        return Colors.purple;
      case 'Closed':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
