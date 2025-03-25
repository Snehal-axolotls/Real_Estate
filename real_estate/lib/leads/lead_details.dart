import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:real_estate/common/bottom_nav_bar.dart';
import 'package:real_estate/leads/add_lead.dart';

class LeadDetails extends StatefulWidget {
  const LeadDetails({super.key});

  @override
  State<LeadDetails> createState() => _LeadDetailsState();
}

class _LeadDetailsState extends State<LeadDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 245, 248, 1),
      appBar: AppBar(
        title: Text(
          "Lead details",
          style: GoogleFonts.dmSans(
              fontWeight: FontWeight.w600, fontSize: 19, color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(14, 39, 63, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(Icons.circle, color: Colors.green, size: 12),
                const SizedBox(
                  width: 5,
                ),
                Text("John Doe",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 21,
                        color: const Color.fromRGBO(21, 95, 165, 1))),
                const Spacer(),
                Container(
                  height: 27,
                  width: 71,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: const Color.fromRGBO(232, 243, 253, 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.call,
                          color: Color.fromRGBO(9, 67, 124, 1), size: 11),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("Call",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: const Color.fromRGBO(9, 67, 124, 1))),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 27,
                  width: 71,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: const Color.fromRGBO(232, 243, 253, 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.edit,
                          color: Color.fromRGBO(9, 67, 124, 1), size: 11),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("Edit",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: const Color.fromRGBO(9, 67, 124, 1))),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const Icon(Icons.phone_in_talk,
                    color: Color.fromRGBO(255, 193, 0, 1), size: 14),
                const SizedBox(
                  width: 10,
                ),
                Text("Phone             :",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: const Color.fromRGBO(21, 95, 165, 1))),
                const SizedBox(
                  width: 10,
                ),
                Text("+91 8888888888",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color.fromRGBO(52, 78, 104, 1))),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Icon(Icons.mark_email_unread_rounded,
                    color: Color.fromARGB(246, 180, 69, 1), size: 13),
                const SizedBox(
                  width: 10,
                ),
                Text("Email              :",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: const Color.fromRGBO(21, 95, 165, 1))),
                const SizedBox(
                  width: 10,
                ),
                Text("johndoe@email.com",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color.fromRGBO(52, 78, 104, 1))),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(Icons.location_city,
                    color: Color.fromRGBO(57, 131, 71, 1), size: 15),
                const SizedBox(
                  width: 10,
                ),
                Text("Location        :",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: const Color.fromRGBO(21, 95, 165, 1))),
                const SizedBox(
                  width: 10,
                ),
                Text("Pune, Maharashtra.",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color.fromRGBO(52, 78, 104, 1))),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.house_rounded,
                    color: Color.fromARGB(255, 241, 120, 111), size: 15.36),
                const SizedBox(
                  width: 10,
                ),
                Text("Interested In :",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: const Color.fromRGBO(21, 95, 165, 1))),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                      "A spacious 2BHK apartment with a stunning sea view, featuring modern interiors, premium amenities, and a private balcony.",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color.fromRGBO(52, 78, 104, 1))),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Interaction History",
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: const Color.fromRGBO(21, 95, 165, 1))),
            const SizedBox(
              height: 15,
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(15)),
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => Divider(
                    color: Color.fromRGBO(210, 222, 233, 1),
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 20,
                        ),
                        child: Row(
                          children: [
                            Text("12 March 2023, 3:00PM ",
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    color:
                                        const Color.fromRGBO(62, 76, 90, 1))),
                            const Spacer(),
                            Text("Call regarding Villa A.",
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    color:
                                        const Color.fromRGBO(62, 76, 90, 1))),
                            Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                 Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddLeader()));
              },
              child: Center(
                child: Container(
                  height: 44.09,
                  width: 212,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Color.fromRGBO(22, 74, 124, 1),
                  ),
                  child: Text(
                    "Add Follow Up",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 1),
    );
  }
}