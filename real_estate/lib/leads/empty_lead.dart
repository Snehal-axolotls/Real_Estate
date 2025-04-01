import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate/common/custom_appbar.dart';
import 'package:real_estate/common/custom_text.dart';

class NoLead extends StatelessWidget {
  const NoLead({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 245, 248, 1),
      appBar: CustomAppBar(
        title: "My Assigned Leads",
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: CustomText(
                text: "No Leads Assigned Yet !",
                color: Color.fromRGBO(47, 111, 172, 1),
                fontSize: MediaQuery.of(context).size.width * 0.06,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: SvgPicture.asset("assets/svg/no lead.svg", height: 250),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: CustomText(
                text: "start following up once leads are assigned to you.",
                color: Color.fromRGBO(146, 160, 173, 1),
                fontWeight: FontWeight.w500,
                fontSize: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
