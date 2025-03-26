// // // import 'package:flutter/material.dart';
// // // import 'package:flutter/rendering.dart';
// // // import 'package:flutter_svg/svg.dart';
// // // import 'package:google_fonts/google_fonts.dart';
// // // import 'package:real_estate/common/bottom_nav_bar.dart';
// // // import 'package:real_estate/common/drawer.dart';
// // // import 'package:real_estate/profile/profile.dart';
// // // import 'package:syncfusion_flutter_charts/charts.dart';

// // // class DashBoard extends StatefulWidget {
// // //   const DashBoard({super.key});

// // //   @override
// // //   State<DashBoard> createState() => _DashBoardState();
// // // }

// // // class _DashBoardState extends State<DashBoard> {
// // //   List<Map> gridData = [
// // //     {"title": "Leads", "score": "28", "desc": "+4 Today"},
// // //     {"title": "Deals Closed", "score": "12", "desc": ""},
// // //     {"title": "Sales Target", "score": "75%", "desc": "₹ 37,500 / ₹ 50k"},
// // //     {"title": "Follow up", "score": "5", "desc": "Next : 9:00 PM"},
// // //   ];

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return LayoutBuilder(
// // //       builder: (context, constraints) {
// // //         double Width = constraints.maxWidth;
// // //         double Height = constraints.maxHeight;
// // //         return Scaffold(
// // //           backgroundColor: Color.fromRGBO(14, 39, 63, 1),

// // //           appBar: AppBar(
// // //             backgroundColor: Colors.transparent,
// // //             leading: Builder(
// // //               builder: (context) {
// // //                 return GestureDetector(
// // //                   onTap: () {
// // //                     Scaffold.of(context).openDrawer();
// // //                   },
// // //                   child: Image.asset("assets/png/icon1.png"),
// // //                 );
// // //               },
// // //             ),
// // //             actions: [
// // //               Image.asset("assets/png/notify.png"),
// // //               SizedBox(width: Width * 0.05),
// // //               GestureDetector(
// // //                 onTap: () {
// // //                    Navigator.push(
// // //           context,
// // //           MaterialPageRoute(builder: (context)=>Profile()),
// // //         );
// // //                 },
// // //                 child: Image.asset("assets/png/person.png")),
// // //               SizedBox(width: Width * 0.04),
// // //             ],
// // //           ),
// // //           drawer: AppDrawer(),
// // //           body: Stack(
// // //             children: [
// // //               Container(
// // //                 color: Color.fromRGBO(14, 39, 63, 1),
// // //                 child: Column(
// // //                   children: [
// // //                     // SizedBox(height:Height*0.03),
// // //                     Padding(
// // //                       padding: const EdgeInsets.symmetric(horizontal: 15),
// // //                       child: Row(
// // //                         children: [
// // //                           Flexible(
// // //                             child: Text(
// // //                               "Hey, Let’s Close Some Deals Today.",
// // //                               style: GoogleFonts.dmSans(
// // //                                 color: Colors.white,
// // //                                 fontSize: Width * 0.049,
// // //                                 fontWeight: FontWeight.w600,
// // //                               ),
// // //                             ),
// // //                           ),
// // //                           SizedBox(width: Width * 0.05),
// // //                           Column(
// // //                             children: [
// // //                               SizedBox(height: Height * 0.049),
// // //                               Text(
// // //                                 "Sales Executive",
// // //                                 style: GoogleFonts.dmSans(
// // //                                   color: Color.fromRGBO(188, 198, 209, 1),
// // //                                   fontSize: Width * 0.039,
// // //                                   fontWeight: FontWeight.w500,
// // //                                 ),
// // //                               ),
// // //                             ],
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),

// // //                     SizedBox(height: Height * 0.03),
// // //                     Stack(
// // //                       children: [
// // //                         Container(
// // //                           // padding: EdgeInsets.all(10),
// // //                           padding: EdgeInsets.only(top: Height * 0.02),
// // //                           height: Height * 0.8,
// // //                           width: Width,
// // //                           decoration: BoxDecoration(
// // //                             color: Color.fromRGBO(242, 245, 248, 1),
// // //                             borderRadius: BorderRadius.only(
// // //                               topLeft: Radius.circular(31),
// // //                               topRight: Radius.circular(31),
// // //                             ),
// // //                           ),

// // //                           child: SingleChildScrollView(
// // //                             child: Column(
// // //                               children: [
// // //                                 Padding(
// // //                                   padding: const EdgeInsets.all(10.0),
// // //                                   child: GridView.builder(
// // //                                     shrinkWrap: true,
// // //                                     physics: NeverScrollableScrollPhysics(),
// // //                                     gridDelegate:
// // //                                         SliverGridDelegateWithFixedCrossAxisCount(
// // //                                           // crossAxisCount: 2,
// // //                                           crossAxisCount: Width > 600 ? 3 : 2,
// // //                                           // mainAxisSpacing: 12,
// // //                                           // crossAxisSpacing: 12,
// // //                                           // childAspectRatio: 1.5,
// // //                                           mainAxisSpacing: Height * 0.015,
// // //                                           crossAxisSpacing: Width * 0.04,
// // //                                           childAspectRatio:
// // //                                               Width > 600 ? 2.0 : 1.5,
// // //                                         ),
// // //                                     itemCount: gridData.length,
// // //                                     itemBuilder: (context, index) {
// // //                                       return Padding(
// // //                                         padding: const EdgeInsets.all(4.0),
// // //                                         child: Container(
// // //                                           // height: Height*0.02,
// // //                                           decoration: BoxDecoration(
// // //                                             color: Color.fromRGBO(
// // //                                               255,
// // //                                               255,
// // //                                               255,
// // //                                               1,
// // //                                             ),
// // //                                             borderRadius: BorderRadius.circular(
// // //                                               10,
// // //                                             ),
// // //                                             boxShadow: [
// // //                                               BoxShadow(
// // //                                                 color: Color.fromRGBO(
// // //                                                   0,
// // //                                                   0,
// // //                                                   0,
// // //                                                   0.09,
// // //                                                 ),
// // //                                                 offset: const Offset(0.0, 4.0),
// // //                                                 blurRadius: 4.0,
// // //                                                 spreadRadius: 0.0,
// // //                                               ), //BoxShadow
// // //                                             ],
// // //                                           ),
// // //                                           child: Column(
// // //                                             children: [
// // //                                               SizedBox(height: Height * 0.005),
// // //                                               Text(
// // //                                                 "${gridData[index]["title"]}",
// // //                                                 style: GoogleFonts.dmSans(
// // //                                                   fontWeight: FontWeight.w600,
// // //                                                   fontSize: Height * 0.017,
// // //                                                 ),
// // //                                               ),
// // //                                               SizedBox(height: Height * 0.009),
// // //                                               Text(
// // //                                                 "${gridData[index]["score"]}",
// // //                                                 style: GoogleFonts.roboto(
// // //                                                   fontWeight: FontWeight.w500,
// // //                                                   fontSize: Height * 0.04,
// // //                                                   color: Color.fromRGBO(
// // //                                                     0,
// // //                                                     170,
// // //                                                     65,
// // //                                                     1,
// // //                                                   ),
// // //                                                 ),
// // //                                               ),
// // //                                               SizedBox(height: Height * 0.005),
// // //                                               Text(
// // //                                                 "${gridData[index]["desc"]}",
// // //                                                 style: GoogleFonts.roboto(
// // //                                                   fontWeight: FontWeight.w400,
// // //                                                   fontSize: Height * 0.014,
// // //                                                   color: Color.fromRGBO(
// // //                                                     130,
// // //                                                     130,
// // //                                                     130,
// // //                                                     1,
// // //                                                   ),
// // //                                                 ),
// // //                                               ),
// // //                                               SizedBox(height: Height * 0.005),
// // //                                             ],
// // //                                           ),
// // //                                         ),
// // //                                       );
// // //                                     },
// // //                                   ),
// // //                                 ),

// // //                                 SizedBox(height: Height * 0.015),

// // //                                 ///FIRST GRAPH
// // //                                 Padding(
// // //                                   padding: const EdgeInsets.all(10.0),
// // //                                   child: Container(
// // //                                     // height: 100,
// // //                                     margin: EdgeInsets.all(10),
// // //                                     decoration: BoxDecoration(
// // //                                       color: Color.fromRGBO(255, 255, 255, 1),
// // //                                       borderRadius: BorderRadius.circular(10),
// // //                                       boxShadow: [
// // //                                         BoxShadow(
// // //                                           color: Color.fromRGBO(3, 3, 3, 0.086),
// // //                                           offset: const Offset(0.0, 4.0),
// // //                                           blurRadius: 4.0,
// // //                                           spreadRadius: 0.0,
// // //                                         ), //BoxShadow
// // //                                       ],
// // //                                     ),
// // //                                     child: Column(
// // //                                       crossAxisAlignment:
// // //                                           CrossAxisAlignment.start,
// // //                                       children: [
// // //                                         Row(
// // //                                           children: [
// // //                                             SizedBox(width: Width * 0.08),
// // //                                             Padding(
// // //                                               padding: const EdgeInsets.all(
// // //                                                 8.0,
// // //                                               ),
// // //                                               child: Text(
// // //                                                 "Lead Conversion Rate",
// // //                                                 style: GoogleFonts.dmSans(
// // //                                                   fontWeight: FontWeight.w600,
// // //                                                   color: Color.fromRGBO(
// // //                                                     9,
// // //                                                     33,
// // //                                                     56,
// // //                                                     1,
// // //                                                   ),
// // //                                                   fontSize: Height * 0.024,
// // //                                                 ),
// // //                                               ),
// // //                                             ),
// // //                                           ],
// // //                                         ),
// // //                                         SfCartesianChart(
// // //                                           primaryXAxis: CategoryAxis(),
// // //                                           series: <CartesianSeries>[
// // //                                             LineSeries<ChartData, String>(
// // //                                               color: Color.fromRGBO(
// // //                                                 2,
// // //                                                 110,
// // //                                                 215,
// // //                                                 1,
// // //                                               ),
// // //                                               dataSource: [
// // //                                                 ChartData("MON", 20),
// // //                                                 ChartData("TUE", 38),
// // //                                                 ChartData("WED", 78),
// // //                                                 ChartData("THU", 35),
// // //                                                 ChartData("FRI", 49),
// // //                                                 ChartData("SAT", 70),
// // //                                                 ChartData("SUN", 60),
// // //                                               ],
// // //                                               xValueMapper:
// // //                                                   (ChartData data, _) => data.x,
// // //                                               yValueMapper:
// // //                                                   (ChartData data, _) => data.y,
// // //                                             ),
// // //                                           ],
// // //                                         ),
// // //                                       ],
// // //                                     ),
// // //                                   ),
// // //                                 ),

// // //                                 SizedBox(height: Height * 0.02),

// // //                                 ///SECOND GRAPH
// // //                                 Padding(
// // //                                   padding: const EdgeInsets.all(10.0),
// // //                                   child: Container(
// // //                                     // height: 100,
// // //                                     margin: EdgeInsets.all(10),
// // //                                     decoration: BoxDecoration(
// // //                                       color: Color.fromRGBO(255, 255, 255, 1),
// // //                                       borderRadius: BorderRadius.circular(10),
// // //                                       boxShadow: [
// // //                                         BoxShadow(
// // //                                           color: Color.fromRGBO(3, 3, 3, 0.086),
// // //                                           offset: const Offset(0.0, 4.0),
// // //                                           blurRadius: 4.0,
// // //                                           spreadRadius: 0.0,
// // //                                         ), //BoxShadow
// // //                                       ],
// // //                                     ),
// // //                                     child: Column(
// // //                                       crossAxisAlignment:
// // //                                           CrossAxisAlignment.start,
// // //                                       children: [
// // //                                         Row(
// // //                                           children: [
// // //                                             SizedBox(width: Width * 0.08),
// // //                                             Padding(
// // //                                               padding: const EdgeInsets.all(
// // //                                                 8.0,
// // //                                               ),
// // //                                               child: Text(
// // //                                                 "Monthly Sales Performance",
// // //                                                 style: GoogleFonts.dmSans(
// // //                                                   fontWeight: FontWeight.w600,
// // //                                                   color: Color.fromRGBO(
// // //                                                     9,
// // //                                                     33,
// // //                                                     56,
// // //                                                     1,
// // //                                                   ),
// // //                                                   fontSize: Height * 0.024,
// // //                                                 ),
// // //                                               ),
// // //                                             ),
// // //                                           ],
// // //                                         ),
// // //                                         SfCartesianChart(
// // //                                           primaryXAxis: CategoryAxis(),
// // //                                           series: <CartesianSeries>[
// // //                                             ColumnSeries<ChartData, String>(
// // //                                               color: Color.fromRGBO(
// // //                                                 2,
// // //                                                 110,
// // //                                                 215,
// // //                                                 1,
// // //                                               ),
// // //                                               width: 0.2,
// // //                                               dataSource: [
// // //                                                 ChartData("JAN", 37),
// // //                                                 ChartData("FEB", 58),
// // //                                                 ChartData("MAR", 55),
// // //                                                 ChartData("APR", 60),
// // //                                                 ChartData("MAY", 40),
// // //                                                 ChartData("JUN", 70),
// // //                                                 ChartData("AUG", 75),
// // //                                                 ChartData("SEP", 20),
// // //                                                 ChartData("OCT", 70),
// // //                                                 ChartData("NOV", 71),
// // //                                                 ChartData("DEC", 75),
// // //                                               ],
// // //                                               xValueMapper:
// // //                                                   (ChartData data, _) => data.x,
// // //                                               yValueMapper:
// // //                                                   (ChartData data, _) => data.y,
// // //                                             ),
// // //                                           ],
// // //                                         ),
// // //                                       ],
// // //                                     ),
// // //                                   ),
// // //                                 ),

// // //                                 SizedBox(height: Height * 0.02),
// // //                               ],
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ),
// // //               Positioned(
// // //                 bottom: 0,
// // //                 left: 0,
// // //                 right: 0,
// // //                 child: CustomBottomNavBar(selectedIndex: 0),
// // //               ),
// // //             ],
// // //           ),

// // //           // bottomNavigationBar: CustomBottomNavBar(),
// // //         );
// // //       },
// // //     );
// // //   }
// // // }

// // // class ChartData {
// // //   ChartData(this.x, this.y);
// // //   final String x;
// // //   final double y;
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:flutter_svg/svg.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:real_estate/common/bottom_nav_bar.dart';
// // import 'package:real_estate/common/drawer.dart';
// // import 'package:real_estate/profile/profile.dart';
// // import 'package:syncfusion_flutter_charts/charts.dart';

// // class DashBoard extends StatefulWidget {
// //   const DashBoard({super.key});

// //   @override
// //   State<DashBoard> createState() => _DashBoardState();
// // }

// // class _DashBoardState extends State<DashBoard> {
// //   List<Map> gridData = [
// //     {"title": "Leads", "score": "28", "desc": "+4 Today"},
// //     {"title": "Deals Closed", "score": "12", "desc": ""},
// //     {"title": "Sales Target", "score": "75%", "desc": "₹ 37,500 / ₹ 50k"},
// //     {"title": "Follow up", "score": "5", "desc": "Next : 9:00 PM"},
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return LayoutBuilder(
// //       builder: (context, constraints) {
// //         double width = constraints.maxWidth;
// //         double height = constraints.maxHeight;

// //         return Scaffold(
// //           backgroundColor: const Color.fromRGBO(14, 39, 63, 1),
// //           appBar: AppBar(
// //             backgroundColor: Colors.transparent,
// //             leading: Builder(
// //               builder: (context) {
// //                 return GestureDetector(
// //                   onTap: () {
// //                     Scaffold.of(context).openDrawer();
// //                   },
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(8.0),
// //                     child: Image.asset("assets/png/icon1.png"),
// //                   ),
// //                 );
// //               },
// //             ),
// //             actions: [
// //               Image.asset("assets/png/notify.png"),
// //               SizedBox(width: width * 0.05),
// //               GestureDetector(
// //                 onTap: () {
// //                   Navigator.push(
// //                     context,
// //                     MaterialPageRoute(builder: (context) => Profile()),
// //                   );
// //                 },
// //                 child: Image.asset("assets/png/person.png"),
// //               ),
// //               SizedBox(width: width * 0.04),
// //             ],
// //           ),
// //           drawer: const AppDrawer(),
// //           body: Stack(
// //             children: [
// //               Container(
// //                 padding: EdgeInsets.symmetric(vertical: 30),
// //                 color: const Color.fromRGBO(14, 39, 63, 1),
// //                 child: Column(
// //                   children: [
// //                     Padding(
// //                       padding: const EdgeInsets.symmetric(horizontal: 15),
// //                       child: Row(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Expanded(
// //                             child: Text(
// //                               "Hey, Let’s Close Some Deals Today.",
// //                               style: GoogleFonts.dmSans(
// //                                 color: Colors.white,
// //                                 fontSize: width * 0.05,
// //                                 fontWeight: FontWeight.w600,
// //                               ),
// //                             ),
// //                           ),
// //                           Column(
// //                             crossAxisAlignment: CrossAxisAlignment.end,
// //                             children: [
// //                               SizedBox(height: height * 0.02),
// //                               Text(
// //                                 "Sales Executive",
// //                                 style: GoogleFonts.dmSans(
// //                                   color: const Color.fromRGBO(188, 198, 209, 1),
// //                                   fontSize: width * 0.04,
// //                                   fontWeight: FontWeight.w500,
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ],
// //                       ),
// //                     ),

// //                     const SizedBox(height: 30),
// //                     Expanded(
// //                       child: Container(
// //                         width: width,
// //                         decoration: const BoxDecoration(
// //                           color: Color.fromRGBO(242, 245, 248, 1),
// //                           borderRadius: BorderRadius.only(
// //                             topLeft: Radius.circular(31),
// //                             topRight: Radius.circular(31),
// //                           ),
// //                         ),
// //                         child: SingleChildScrollView(
// //                           padding: const EdgeInsets.all(15),
// //                           child: Column(
// //                             children: [
// //                               GridView.builder(
// //                                 shrinkWrap: true,
// //                                 physics: const NeverScrollableScrollPhysics(),
// //                                 gridDelegate:
// //                                 // SliverGridDelegateWithFixedCrossAxisCount(
// //                                 //   crossAxisCount: width > 700 ? 3 : 2,
// //                                 //   mainAxisSpacing: height * 0.02,
// //                                 //   crossAxisSpacing: width * 0.04,
// //                                 //   childAspectRatio: width > 600 ? 2.0 : 1.5,
// //                                 // ),
// //                                 SliverGridDelegateWithFixedCrossAxisCount(
// //                                   crossAxisCount:
// //                                       MediaQuery.of(context).size.width > 1400
// //                                           ? 5 // Extra large screens
// //                                           : MediaQuery.of(context).size.width >
// //                                               1000
// //                                           ? 4 // Large screens (Laptops/Tablets in landscape)
// //                                           : MediaQuery.of(context).size.width >
// //                                               760
// //                                           ? 3 // Medium screens (759x1024, 1000x1024)
// //                                           : MediaQuery.of(context).size.width >
// //                                               500
// //                                           ? 2 // Small tablets (400x1024)
// //                                           : 1, // Very small screens (Narrow phones)

// //                                   mainAxisSpacing:
// //                                       MediaQuery.of(context).size.height *
// //                                       0.015,
// //                                   crossAxisSpacing:
// //                                       MediaQuery.of(context).size.width * 0.04,

// //                                   childAspectRatio:
// //                                       MediaQuery.of(context).size.width > 1400
// //                                           ? 2.5
// //                                           : MediaQuery.of(context).size.width >
// //                                               1000
// //                                           ? 2.2
// //                                           : MediaQuery.of(context).size.width >
// //                                               760
// //                                           ? 1.8
// //                                           : MediaQuery.of(context).size.width >
// //                                               500
// //                                           ? 1.5
// //                                           : 1.2, // Adjusted for narrow screens
// //                                 ),

// //                                 itemCount: gridData.length,
// //                                 itemBuilder: (context, index) {
// //                                   return Container(
// //                                     decoration: BoxDecoration(
// //                                       color: Colors.white,
// //                                       borderRadius: BorderRadius.circular(10),
// //                                       boxShadow: [
// //                                         BoxShadow(
// //                                           color: Colors.black.withOpacity(0.1),
// //                                           offset: const Offset(0, 4),
// //                                           blurRadius: 4,
// //                                         ),
// //                                       ],
// //                                     ),
// //                                     child: Column(
// //                                       mainAxisAlignment:
// //                                           MainAxisAlignment.center,
// //                                       children: [
// //                                         FittedBox(
// //                                           fit: BoxFit.scaleDown,
// //                                           child: Text(
// //                                             "${gridData[index]["title"]}",
// //                                             style: GoogleFonts.dmSans(
// //                                               fontWeight: FontWeight.w600,
// //                                               fontSize: height * 0.018,
// //                                             ),
// //                                           ),
// //                                         ),
// //                                         SizedBox(height: height * 0.01),
// //                                         FittedBox(
// //                                           fit: BoxFit.scaleDown,
// //                                           child: Text(
// //                                             "${gridData[index]["score"]}",
// //                                             style: GoogleFonts.roboto(
// //                                               fontWeight: FontWeight.w500,
// //                                               fontSize: height * 0.04,
// //                                               color: const Color.fromRGBO(
// //                                                 0,
// //                                                 170,
// //                                                 65,
// //                                                 1,
// //                                               ),
// //                                             ),
// //                                           ),
// //                                         ),
// //                                         FittedBox(
// //                                           fit: BoxFit.scaleDown,
// //                                           child: Text(
// //                                             "${gridData[index]["desc"]}",
// //                                             style: GoogleFonts.roboto(
// //                                               fontWeight: FontWeight.w400,
// //                                               fontSize: height * 0.014,
// //                                               color: Colors.grey,
// //                                             ),
// //                                           ),
// //                                         ),
// //                                       ],
// //                                     ),
// //                                   );
// //                                 },
// //                               ),

// //                               SizedBox(height: height * 0.02),

// //                               /// First Graph
// //                               buildGraphContainer(
// //                                 width,
// //                                 height,
// //                                 "Lead Conversion Rate",
// //                                 getLineChart(),
// //                               ),

// //                               SizedBox(height: height * 0.02),

// //                               /// Second Graph
// //                               buildGraphContainer(
// //                                 width,
// //                                 height,
// //                                 "Monthly Sales Performance",
// //                                 getBarChart(),
// //                               ),

// //                               SizedBox(height: height * 0.02),
// //                             ],
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),

// //               /// Bottom Navigation Bar
// //               Positioned(
// //                 bottom: 0,
// //                 left: 0,
// //                 right: 0,
// //                 child: CustomBottomNavBar(selectedIndex: 0),
// //               ),
// //             ],
// //           ),
// //         );
// //       },
// //     );
// //   }

// //   Widget buildGraphContainer(
// //     double width,
// //     double height,
// //     String title,
// //     Widget chartWidget,
// //   ) {
// //     return Container(
// //       padding: const EdgeInsets.all(15),
// //       decoration: BoxDecoration(
// //         color: Colors.white,
// //         borderRadius: BorderRadius.circular(10),
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.black.withOpacity(0.1),
// //             offset: const Offset(0, 4),
// //             blurRadius: 4,
// //           ),
// //         ],
// //       ),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Text(
// //             title,
// //             style: GoogleFonts.dmSans(
// //               fontWeight: FontWeight.w600,
// //               fontSize: height * 0.024,
// //             ),
// //           ),
// //           chartWidget,
// //         ],
// //       ),
// //     );
// //   }

// //   Widget getLineChart() {
// //     return SfCartesianChart(
// //       primaryXAxis: CategoryAxis(),
// //       series: <CartesianSeries>[
// //         LineSeries<ChartData, String>(
// //           color: Colors.blue,
// //           dataSource: [
// //             ChartData("MON", 20),
// //             ChartData("TUE", 38),
// //             ChartData("WED", 78),
// //             ChartData("THU", 35),
// //             ChartData("FRI", 49),
// //             ChartData("SAT", 70),
// //             ChartData("SUN", 60),
// //           ],
// //           xValueMapper: (ChartData data, _) => data.x,
// //           yValueMapper: (ChartData data, _) => data.y,
// //         ),
// //       ],
// //     );
// //   }

// //   Widget getBarChart() {
// //     return SfCartesianChart(
// //       primaryXAxis: CategoryAxis(),
// //       series: <CartesianSeries>[
// //         ColumnSeries<ChartData, String>(
// //           color: Colors.blue,
// //           width: 0.2,
// //           dataSource: [
// //             ChartData("JAN", 37),
// //             ChartData("FEB", 58),
// //             ChartData("MAR", 55),
// //             ChartData("APR", 60),
// //             ChartData("MAY", 40),
// //             ChartData("JUN", 70),
// //             ChartData("AUG", 75),
// //             ChartData("SEP", 20),
// //             ChartData("OCT", 70),
// //             ChartData("NOV", 71),
// //             ChartData("DEC", 75),
// //           ],
// //           xValueMapper: (ChartData data, _) => data.x,
// //           yValueMapper: (ChartData data, _) => data.y,
// //         ),
// //       ],
// //     );
// //   }
// // }

// // class ChartData {
// //   ChartData(this.x, this.y);
// //   final String x;
// //   final double y;
// // }

// // import 'package:flutter/material.dart';
// // import 'package:flutter_svg/svg.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:real_estate/common/bottom_nav_bar.dart';
// // import 'package:real_estate/common/drawer.dart';
// // import 'package:real_estate/profile/profile.dart';
// // import 'package:syncfusion_flutter_charts/charts.dart';

// // class DashBoard extends StatefulWidget {
// //   const DashBoard({super.key});

// //   @override
// //   State<DashBoard> createState() => _DashBoardState();
// // }

// // class _DashBoardState extends State<DashBoard> {
// //   List<Map> gridData = [
// //     {"title": "Leads", "score": "28", "desc": "+4 Today"},
// //     {"title": "Deals Closed", "score": "12", "desc": ""},
// //     {"title": "Sales Target", "score": "75%", "desc": "₹ 37,500 / ₹ 50k"},
// //     {"title": "Follow up", "score": "5", "desc": "Next: 9:00 PM"},
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     double width = MediaQuery.of(context).size.width;
// //     double height = MediaQuery.of(context).size.height;

// //     return Scaffold(
// //       backgroundColor: const Color.fromRGBO(14, 39, 63, 1),
// //       appBar: AppBar(
// //         backgroundColor: Colors.transparent,
// //         leading: Builder(
// //           builder: (context) {
// //             return GestureDetector(
// //               onTap: () => Scaffold.of(context).openDrawer(),
// //               child: Padding(
// //                 padding: const EdgeInsets.all(8.0),
// //                 child: Image.asset("assets/png/icon1.png"),
// //               ),
// //             );
// //           },
// //         ),
// //         actions: [
// //           Image.asset("assets/png/notify.png"),
// //           SizedBox(width: width * 0.05),
// //           GestureDetector(
// //             onTap: () {
// //               Navigator.push(context,
// //                   MaterialPageRoute(builder: (context) => Profile()));
// //             },
// //             child: Image.asset("assets/png/person.png"),
// //           ),
// //           SizedBox(width: width * 0.04),
// //         ],
// //       ),
// //       drawer: const AppDrawer(),
// //       body: Stack(
// //         children: [
// //           Column(
// //             children: [
// //               Padding(
// //                 padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
// //                 child: Row(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Expanded(
// //                       child: Text(
// //                         "Hey, Let’s Close Some Deals Today.",
// //                         style: GoogleFonts.dmSans(
// //                           color: Colors.white,
// //                           fontSize: width * 0.05,
// //                           fontWeight: FontWeight.w600,
// //                         ),
// //                       ),
// //                     ),
// //                     Column(
// //                       crossAxisAlignment: CrossAxisAlignment.end,
// //                       children: [
// //                         SizedBox(height: height * 0.02),
// //                         Text(
// //                           "Sales Executive",
// //                           style: GoogleFonts.dmSans(
// //                             color: const Color.fromRGBO(188, 198, 209, 1),
// //                             fontSize: width * 0.04,
// //                             fontWeight: FontWeight.w500,
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               Expanded(
// //                 child: Container(
// //                   width: width,
// //                   decoration: const BoxDecoration(
// //                     color: Color.fromRGBO(242, 245, 248, 1),
// //                     borderRadius: BorderRadius.only(
// //                       topLeft: Radius.circular(31),
// //                       topRight: Radius.circular(31),
// //                     ),
// //                   ),
// //                   child: SingleChildScrollView(
// //                     padding: const EdgeInsets.all(15),
// //                     child: Column(
// //                       children: [
// // //                         GridView.builder(
// // //                           shrinkWrap: true,
// // //                           physics: const NeverScrollableScrollPhysics(),
// // //                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// // //   crossAxisCount: width > 1400
// // //       ? 5
// // //       : width > 1000
// // //           ? 4
// // //           : width > 760
// // //               ? 3
// // //               : width > 300 // Ensures minimum 2 grids for width > 300
// // //                   ? 2
// // //                   : 1,

// // //   mainAxisSpacing: height * 0.015,
// // //   crossAxisSpacing: width * 0.04,

// // //   childAspectRatio: width > 1400
// // //       ? 2.5
// // //       : width > 1000
// // //           ? 2.2
// // //           : width > 760
// // //               ? 1.8
// // //               : width > 500
// // //                   ? 1.5
// // //                   : 1.3, // Adjusted to prevent overflow
// // // ),

// // //                           // SliverGridDelegateWithFixedCrossAxisCount(
// // //                           //   crossAxisCount: width > 1400
// // //                           //       ? 5
// // //                           //       : width > 1000
// // //                           //           ? 4
// // //                           //           : width > 760
// // //                           //               ? 3
// // //                           //               : width > 500
// // //                           //                   ? 2
// // //                           //                   : 1,
// // //                           //   mainAxisSpacing: height * 0.015,
// // //                           //   crossAxisSpacing: width * 0.04,
// // //                           //   childAspectRatio: width > 1400
// // //                           //       ? 2.5
// // //                           //       : width > 1000
// // //                           //           ? 2.2
// // //                           //           : width > 760
// // //                           //               ? 1.8
// // //                           //               : width > 500
// // //                           //                   ? 1.5
// // //                           //                   : 1.2,
// // //                           // ),
// // //                           itemCount: gridData.length,
// // //                           itemBuilder: (context, index) {
// // //                             return Container(
// // //                               decoration: BoxDecoration(
// // //                                 color: Colors.white,
// // //                                 borderRadius: BorderRadius.circular(10),
// // //                                 boxShadow: [
// // //                                   BoxShadow(
// // //                                     color: Colors.black.withOpacity(0.1),
// // //                                     offset: const Offset(0, 4),
// // //                                     blurRadius: 4,
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                               child: Column(
// // //                                 mainAxisAlignment: MainAxisAlignment.center,
// // //                                 children: [
// // //                                   FittedBox(
// // //                                     fit: BoxFit.scaleDown,
// // //                                     child: Text(
// // //                                       "${gridData[index]["title"]}",
// // //                                       style: GoogleFonts.dmSans(
// // //                                         fontWeight: FontWeight.w600,
// // //                                         fontSize: height * 0.018,
// // //                                       ),
// // //                                     ),
// // //                                   ),
// // //                                   SizedBox(height: height * 0.01),
// // //                                   FittedBox(
// // //                                     fit: BoxFit.scaleDown,
// // //                                     child: Text(
// // //                                       "${gridData[index]["score"]}",
// // //                                       style: GoogleFonts.roboto(
// // //                                         fontWeight: FontWeight.w500,
// // //                                         fontSize: height * 0.04,
// // //                                         color: const Color.fromRGBO(0, 170, 65, 1),
// // //                                       ),
// // //                                     ),
// // //                                   ),
// // //                                   FittedBox(
// // //                                     fit: BoxFit.scaleDown,
// // //                                     child: Text(
// // //                                       "${gridData[index]["desc"]}",
// // //                                       style: GoogleFonts.roboto(
// // //                                         fontWeight: FontWeight.w400,
// // //                                         fontSize: height * 0.014,
// // //                                         color: Colors.grey,
// // //                                       ),
// // //                                     ),
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                             );
// // //                           },
// // //                         ),

// //                         GridView.builder(
// //   shrinkWrap: true,
// //   physics: const NeverScrollableScrollPhysics(),
// //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //     crossAxisCount: MediaQuery.of(context).size.width > 1400
// //         ? 5
// //         : MediaQuery.of(context).size.width > 1000
// //             ? 4
// //             : MediaQuery.of(context).size.width > 760
// //                 ? 3
// //                 : MediaQuery.of(context).size.width > 300 // Ensures minimum 2 grids for width > 300
// //                     ? 2
// //                     : 1,

// //     mainAxisSpacing: MediaQuery.of(context).size.height * 0.015,
// //     crossAxisSpacing: MediaQuery.of(context).size.width * 0.04,

// //     childAspectRatio: MediaQuery.of(context).size.width > 1400
// //         ? 2.5
// //         : MediaQuery.of(context).size.width > 1000
// //             ? 2.2
// //             : MediaQuery.of(context).size.width > 760
// //                 ? 1.8
// //                 : MediaQuery.of(context).size.width > 500
// //                     ? 1.4
// //                     : 1.2, // Adjusted to prevent overflow
// //   ),
// //   itemCount: gridData.length,
// //   itemBuilder: (context, index) {
// //     return Container(
// //       decoration: BoxDecoration(
// //         color: Colors.white,
// //         borderRadius: BorderRadius.circular(10),
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.black.withOpacity(0.1),
// //             offset: const Offset(0, 4),
// //             blurRadius: 4,
// //           ),
// //         ],
// //       ),
// //       child: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           FittedBox(
// //             fit: BoxFit.scaleDown,
// //             child: Text(
// //               "${gridData[index]["title"]}",
// //               style: GoogleFonts.dmSans(
// //                 fontWeight: FontWeight.w600,
// //                 fontSize: MediaQuery.of(context).size.height * 0.018,
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: MediaQuery.of(context).size.height * 0.01),
// //           FittedBox(
// //             fit: BoxFit.scaleDown,
// //             child: Text(
// //               "${gridData[index]["score"]}",
// //               style: GoogleFonts.roboto(
// //                 fontWeight: FontWeight.w500,
// //                 fontSize: MediaQuery.of(context).size.height * 0.04,
// //                 color: const Color.fromRGBO(0, 170, 65, 1),
// //               ),
// //             ),
// //           ),
// //           FittedBox(
// //             fit: BoxFit.scaleDown,
// //             child: Text(
// //               "${gridData[index]["desc"]}",
// //               style: GoogleFonts.roboto(
// //                 fontWeight: FontWeight.w400,
// //                 fontSize: MediaQuery.of(context).size.height * 0.014,
// //                 color: Colors.grey,
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   },
// // ),

// //                         SizedBox(height: height * 0.02),
// //                         buildGraphContainer(
// //                           width,
// //                           height,
// //                           "Lead Conversion Rate",
// //                           getLineChart(),
// //                         ),
// //                         SizedBox(height: height * 0.02),
// //                         buildGraphContainer(
// //                           width,
// //                           height,
// //                           "Monthly Sales Performance",
// //                           getBarChart(),
// //                         ),
// //                         SizedBox(height: height * 0.02),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //           Positioned(
// //             bottom: 0,
// //             left: 0,
// //             right: 0,
// //             child: CustomBottomNavBar(selectedIndex: 0),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget buildGraphContainer(
// //     double width,
// //     double height,
// //     String title,
// //     Widget chartWidget,
// //   ) {
// //     return Container(
// //       padding: const EdgeInsets.all(15),
// //       decoration: BoxDecoration(
// //         color: Colors.white,
// //         borderRadius: BorderRadius.circular(10),
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.black.withOpacity(0.1),
// //             offset: const Offset(0, 4),
// //             blurRadius: 4,
// //           ),
// //         ],
// //       ),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Text(
// //             title,
// //             style: GoogleFonts.dmSans(
// //               fontWeight: FontWeight.w600,
// //               fontSize: height * 0.024,
// //             ),
// //           ),
// //           chartWidget,
// //         ],
// //       ),
// //     );
// //   }

// //   Widget getLineChart() {
// //     return SfCartesianChart(
// //       primaryXAxis: CategoryAxis(),
// //       series: [
// //         LineSeries<ChartData, String>(
// //           color: Colors.blue,
// //           dataSource: [
// //             ChartData("MON", 20),
// //             ChartData("TUE", 38),
// //             ChartData("WED", 78),
// //             ChartData("THU", 35),
// //             ChartData("FRI", 49),
// //             ChartData("SAT", 70),
// //             ChartData("SUN", 60),
// //           ],
// //           xValueMapper: (data, _) => data.x,
// //           yValueMapper: (data, _) => data.y,
// //         ),
// //       ],
// //     );
// //   }

// //    Widget getBarChart() {
// //     return SfCartesianChart(
// //       primaryXAxis: CategoryAxis(),
// //       series: <CartesianSeries>[
// //         ColumnSeries<ChartData, String>(
// //           color: Colors.blue,
// //           width: 0.2,
// //           dataSource: [
// //             ChartData("JAN", 37),
// //             ChartData("FEB", 58),
// //             ChartData("MAR", 55),
// //             ChartData("APR", 60),
// //             ChartData("MAY", 40),
// //             ChartData("JUN", 70),
// //             ChartData("AUG", 75),
// //             ChartData("SEP", 20),
// //             ChartData("OCT", 70),
// //             ChartData("NOV", 71),
// //             ChartData("DEC", 75),
// //           ],
// //           xValueMapper: (ChartData data, _) => data.x,
// //           yValueMapper: (ChartData data, _) => data.y,
// //         ),
// //       ],
// //     );
// //   }
// // }

// // class ChartData {
// //   ChartData(this.x, this.y);
// //   final String x;
// //   final double y;
// // }

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:real_estate/common/bottom_nav_bar.dart';
// import 'package:real_estate/common/drawer.dart';
// import 'package:real_estate/profile/profile.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class DashBoard extends StatefulWidget {
//   const DashBoard({super.key});

//   @override
//   State<DashBoard> createState() => _DashBoardState();
// }

// class _DashBoardState extends State<DashBoard> {
//   List<Map> gridData = [
//     {"title": "Leads", "score": "28", "desc": "+4 Today"},
//     {"title": "Deals Closed", "score": "12", "desc": ""},
//     {"title": "Sales Target", "score": "75%", "desc": "₹ 37,500 / ₹ 50k"},
//     {"title": "Follow up", "score": "5", "desc": "Next: 9:00 PM"},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;

//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(14, 39, 63, 1),
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         leading: Builder(
//           builder: (context) {
//             return GestureDetector(
//               onTap: () => Scaffold.of(context).openDrawer(),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Image.asset("assets/png/icon1.png"),
//               ),
//             );
//           },
//         ),
//         actions: [
//           Image.asset("assets/png/notify.png"),
//           SizedBox(width: width * 0.05),
//           GestureDetector(
//             onTap: () {
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
//             },
//             child: Image.asset("assets/png/person.png"),
//           ),
//           SizedBox(width: width * 0.04),
//         ],
//       ),
//       drawer: const AppDrawer(),
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: Text(
//                         "Hey, Let’s Close Some Deals Today.",
//                         style: GoogleFonts.dmSans(
//                           color: Colors.white,
//                           fontSize: width * 0.05,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         SizedBox(height: height * 0.02),
//                         Text(
//                           "Sales Executive",
//                           style: GoogleFonts.dmSans(
//                             color: const Color.fromRGBO(188, 198, 209, 1),
//                             fontSize: width * 0.04,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   width: width,
//                   decoration: const BoxDecoration(
//                     color: Color.fromRGBO(242, 245, 248, 1),
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(31),
//                       topRight: Radius.circular(31),
//                     ),
//                   ),
//                   child: SingleChildScrollView(
//                     padding: const EdgeInsets.all(15),
//                     child: Column(
//                       children: [
//                         Wrap(
//                           spacing: 16,
//                           runSpacing: 16,
//                           alignment: WrapAlignment.center,
//                           children: gridData.map((data) {
//                             return Container(
//                               width: width > 1000 ? width * 0.2 : width * 0.4,
//                               padding: const EdgeInsets.all(15),
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(10),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.black.withOpacity(0.1),
//                                     offset: const Offset(0, 4),
//                                     blurRadius: 4,
//                                   ),
//                                 ],
//                               ),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     data["title"],
//                                     style: GoogleFonts.dmSans(
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: height * 0.018,
//                                     ),
//                                   ),
//                                   SizedBox(height: height * 0.01),
//                                   Text(
//                                     data["score"],
//                                     style: GoogleFonts.roboto(
//                                       fontWeight: FontWeight.w500,
//                                       fontSize: height * 0.04,
//                                       color: const Color.fromRGBO(0, 170, 65, 1),
//                                     ),
//                                   ),
//                                   Text(
//                                     data["desc"],
//                                     style: GoogleFonts.roboto(
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: height * 0.014,
//                                       color: Colors.grey,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             );
//                           }).toList(),
//                         ),
//                         SizedBox(height: height * 0.02),
//                         buildGraphContainer("Lead Conversion Rate", getLineChart()),
//                         SizedBox(height: height * 0.02),
//                         buildGraphContainer("Monthly Sales Performance", getBarChart()),
//                         SizedBox(height: height * 0.02),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: CustomBottomNavBar(selectedIndex: 0),
//           ),
//         ],
//       ),
//     );
//   }

//    Widget buildGraphContainer(
//     double width,
//     double height,
//     String title,
//     Widget chartWidget,
//   ) {
//     return Container(
//       padding: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             offset: const Offset(0, 4),
//             blurRadius: 4,
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: GoogleFonts.dmSans(
//               fontWeight: FontWeight.w600,
//               fontSize: height * 0.024,
//             ),
//           ),
//           chartWidget,
//         ],
//       ),
//     );
//   }

//   Widget getLineChart() {
//     return SfCartesianChart(
//       primaryXAxis: CategoryAxis(),
//       series: [
//         LineSeries<ChartData, String>(
//           color: Colors.blue,
//           dataSource: [
//             ChartData("MON", 20),
//             ChartData("TUE", 38),
//             ChartData("WED", 78),
//             ChartData("THU", 35),
//             ChartData("FRI", 49),
//             ChartData("SAT", 70),
//             ChartData("SUN", 60),
//           ],
//           xValueMapper: (data, _) => data.x,
//           yValueMapper: (data, _) => data.y,
//         ),
//       ],
//     );
//   }

//    Widget getBarChart() {
//     return SfCartesianChart(
//       primaryXAxis: CategoryAxis(),
//       series: <CartesianSeries>[
//         ColumnSeries<ChartData, String>(
//           color: Colors.blue,
//           width: 0.2,
//           dataSource: [
//             ChartData("JAN", 37),
//             ChartData("FEB", 58),
//             ChartData("MAR", 55),
//             ChartData("APR", 60),
//             ChartData("MAY", 40),
//             ChartData("JUN", 70),
//             ChartData("AUG", 75),
//             ChartData("SEP", 20),
//             ChartData("OCT", 70),
//             ChartData("NOV", 71),
//             ChartData("DEC", 75),
//           ],
//           xValueMapper: (ChartData data, _) => data.x,
//           yValueMapper: (ChartData data, _) => data.y,
//         ),
//       ],
//     );
//   }
// }

// class ChartData {
//   ChartData(this.x, this.y);
//   final String x;
//   final double y;
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/common/bottom_nav_bar.dart';
import 'package:real_estate/common/drawer.dart';
import 'package:real_estate/profile/profile.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<Map> gridData = [
    {"title": "Leads", "score": "28", "desc": "+4 Today"},
    {"title": "Deals Closed", "score": "12", "desc": ""},
    {"title": "Sales Target", "score": "75%", "desc": "₹ 37,500 / ₹ 50k"},
    {"title": "Follow up", "score": "5", "desc": "Next: 9:00 PM"},
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(14, 39, 63, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) {
            return GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/png/icon1.png"),
              ),
            );
          },
        ),
        actions: [
          Image.asset("assets/png/notify.png"),
          SizedBox(width: width * 0.05),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
            child: Image.asset("assets/png/person.png"),
          ),
          SizedBox(width: width * 0.04),
        ],
      ),
      drawer: const AppDrawer(),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Hey, Let’s Close Some Deals Today.",
                        style: GoogleFonts.dmSans(
                          color: Colors.white,
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: height * 0.02),
                        Text(
                          "Sales Executive",
                          style: GoogleFonts.dmSans(
                            color: const Color.fromRGBO(188, 198, 209, 1),
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(bottom: height * 0.05,top: height*0.025),
                  width: width,
                  height: MediaQuery.of(context).size.height - (height * 0.25),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(242, 245, 248, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(31),
                      topRight: Radius.circular(31),
                    ),
                  ),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Wrap(
                          spacing: width * 0.04, // Responsive horizontal spacing
                          runSpacing: height * 0.02,
                          alignment: WrapAlignment.center,
                          children:
                              gridData.map((data) {
                                return Container(
                                  width:
                                      width > 1000 ? width * 0.2 : width * 0.4,
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: const Offset(0, 4),
                                        blurRadius: 4,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        data["title"],
                                        style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w600,
                                          fontSize: height * 0.018,
                                        ),
                                      ),
                                      SizedBox(height: height * 0.01),
                                      Text(
                                        data["score"],
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: height * 0.04,
                                          color: const Color.fromRGBO(
                                            0,
                                            170,
                                            65,
                                            1,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        data["desc"],
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: height * 0.014,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                        ),
                        SizedBox(height: height * 0.02),
                        buildGraphContainer(
                          "Lead Conversion Rate",
                          getLineChart(),
                        ),
                        SizedBox(height: height * 0.02),
                        buildGraphContainer(
                          "Monthly Sales Performance",
                          getBarChart(),
                        ),
                        SizedBox(height: height * 0.02),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomBottomNavBar(selectedIndex: 0),
          ),
        ],
      ),
    );
  }

  Widget buildGraphContainer(String title, Widget chartWidget) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          chartWidget,
        ],
      ),
    );
  }

  Widget getLineChart() {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      series: [
        LineSeries<ChartData, String>(
          color: Colors.blue,
          dataSource: [
            ChartData("MON", 20),
            ChartData("TUE", 38),
            ChartData("WED", 78),
            ChartData("THU", 35),
            ChartData("FRI", 49),
            ChartData("SAT", 70),
            ChartData("SUN", 60),
          ],
          xValueMapper: (data, _) => data.x,
          yValueMapper: (data, _) => data.y,
        ),
      ],
    );
  }

  Widget getBarChart() {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      series: <CartesianSeries>[
        ColumnSeries<ChartData, String>(
          color: Colors.blue,
          width: 0.2,
          dataSource: [
            ChartData("JAN", 37),
            ChartData("FEB", 58),
            ChartData("MAR", 55),
            ChartData("APR", 60),
            ChartData("MAY", 40),
            ChartData("JUN", 70),
            ChartData("AUG", 75),
            ChartData("SEP", 20),
            ChartData("OCT", 70),
            ChartData("NOV", 71),
            ChartData("DEC", 75),
          ],
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
        ),
      ],
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;
}
