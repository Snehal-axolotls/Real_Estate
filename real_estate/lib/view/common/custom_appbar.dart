import 'package:flutter/material.dart';
import 'package:real_estate/view/common/custom_text.dart';
import 'package:real_estate/view/dashboard/dashboard.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final Widget? leading;
  final List<Widget>? actions;

  const CustomAppBar({
    required this.title,
    this.backgroundColor = const Color.fromRGBO(14, 39, 63, 1),
    this.leading,
    this.actions,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CustomText(
        text: title,
          fontWeight: FontWeight.w600,
          fontSize: 19.0,
          color: Colors.white,
        
      ),
      backgroundColor: backgroundColor,
      leading: leading ??
          IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => DashBoard()),
                (Route<dynamic> route) => false,
              ),
            ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
