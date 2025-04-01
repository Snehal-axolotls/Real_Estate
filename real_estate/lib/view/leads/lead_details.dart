import 'package:flutter/material.dart';
import 'package:real_estate/view/common/bottom_nav_bar.dart';
import 'package:real_estate/view/common/custom_appbar.dart';
import 'package:real_estate/view/common/custom_button.dart';
import 'package:real_estate/view/common/custom_text.dart';
import 'package:real_estate/view/leads/add_lead.dart';

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
      appBar: CustomAppBar(
        title: "Lead details",
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
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.circle, color: Colors.green, size: 12),
                const SizedBox(width: 5),
                CustomText(
                  text : "John Doe",
                    fontWeight: FontWeight.w600,
                    fontSize: 21,
                    color: const Color.fromRGBO(21, 95, 165, 1),
                ),
                const Spacer(),
                Container(
                  height: 27,
                  width: 71,
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
                        size: 11,
                      ),
                      const SizedBox(width: 5),
                      CustomText(
                        text : "Call",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: const Color.fromRGBO(9, 67, 124, 1),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  height: 27,
                  width: 71,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: const Color.fromRGBO(232, 243, 253, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit,
                        color: Color.fromRGBO(9, 67, 124, 1),
                        size: 11,
                      ),
                      const SizedBox(width: 5),
                      CustomText(
                        text : "Edit",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: const Color.fromRGBO(9, 67, 124, 1),
                        
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                const Icon(
                  Icons.phone_in_talk,
                  color: Color.fromRGBO(255, 193, 0, 1),
                  size: 14,
                ),
                const SizedBox(width: 10),
                CustomText(
                  text : "Phone             :",
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: const Color.fromRGBO(21, 95, 165, 1),
                  
                ),
                const SizedBox(width: 10),
                CustomText(
                  text : "+91 8888888888",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color.fromRGBO(52, 78, 104, 1),
                  
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(
                  Icons.mark_email_unread_rounded,
                  color: Color.fromARGB(246, 180, 69, 1),
                  size: 13,
                ),
                const SizedBox(width: 10),
                CustomText(
                  text : "Email              :",
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: const Color.fromRGBO(21, 95, 165, 1),
                  
                ),
                const SizedBox(width: 10),
                CustomText(
                  text : "johndoe@email.com",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color.fromRGBO(52, 78, 104, 1),
                  ),
                
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(
                  Icons.location_city,
                  color: Color.fromRGBO(57, 131, 71, 1),
                  size: 15,
                ),
                const SizedBox(width: 10),
                CustomText(
                  text : "Location        :",
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: const Color.fromRGBO(21, 95, 165, 1),
                  
                ),
                const SizedBox(width: 10),
                CustomText(
                  text : "Pune, Maharashtra.",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color.fromRGBO(52, 78, 104, 1),
                  ),
                
              ],
            ),
            const SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.house_rounded,
                  color: Color.fromARGB(255, 241, 120, 111),
                  size: 15.36,
                ),
                const SizedBox(width: 10),
                CustomText(
                  text : "Interested In :",
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: const Color.fromRGBO(21, 95, 165, 1),
                  
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomText(
                    text : "A spacious 2BHK apartment with a stunning sea view, featuring modern interiors, premium amenities, and a private balcony.",
                    textAlign: TextAlign.start,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color.fromRGBO(52, 78, 104, 1),
                    
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomText(
              text : "Interaction History",
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: const Color.fromRGBO(21, 95, 165, 1),
              
            ),
            const SizedBox(height: 15),
            Flexible(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder:
                      (context, index) =>
                          Divider(color: Color.fromRGBO(210, 222, 233, 1)),
                  itemCount: 4,
                  itemBuilder:
                      (context, index) => Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 20),
                            child: Row(
                              children: [
                                CustomText(
                                  text : "12 March 2023, 3:00PM ",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    color: const Color.fromRGBO(62, 76, 90, 1),
                                
                                ),
                                const Spacer(),
                                CustomText(
                                  text : "Call regarding Villa A.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    color: const Color.fromRGBO(62, 76, 90, 1),
                                  
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                        ],
                      ),
                ),
              ),
            ),
            const SizedBox(height: 40),

            ///ADD FOLLOW UP 
            CustomButton(
              text:"Add Follow Up",
              height:44.09 ,
              fontSize: 14,
              width: 212,
              onTap:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddLeader()),
                );
              }
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 1),
    );
  }
}
