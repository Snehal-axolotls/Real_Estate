import 'package:flutter/material.dart';
import 'package:real_estate/bottom_nav_bar.dart';
import 'package:real_estate/empty_lead.dart';
import 'package:real_estate/follow_ups.dart';
import 'package:real_estate/properties.dart';

import 'dashboard.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Property(),
      // home: EmptyLead(),
    );
  }
}
