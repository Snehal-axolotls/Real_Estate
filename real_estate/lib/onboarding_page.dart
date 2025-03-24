import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate/drawer.dart';
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
    {"title": "Sales Target", "score": "75%", "desc": "₹ 37,500 / ₹ 50k"},
    {"title": "Follow up", "score": "5", "desc": "Next : 9:00 PM"},
  ];

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(14, 39, 63, 1),
        leading: Builder(
          builder: (context){
            return GestureDetector(
            onTap: (){
              Scaffold.of(context).openDrawer();
            },
            child: Image.asset("assets/png/icon1.png")
          );
          } 
        ),
        actions: [
          Image.asset("assets/png/notify.png"),
          SizedBox(width: Width * 0.05),
          Image.asset("assets/png/person.png"),
          SizedBox(width: Width * 0.04),
        ],
      ),
      drawer: AppDrawer(),
      body: Container(
        color: Color.fromRGBO(14, 39, 63, 1),
        child: Column(
          children: [
            // SizedBox(height:Height*0.03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      "Hey, Let’s Close Some Deals Today.",
                      style: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontSize: Width * 0.049,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(width: Width * 0.05),
                  Column(
                    children: [
                      SizedBox(height: Height * 0.049),
                      Text(
                        "Sales Executive",
                        style: GoogleFonts.dmSans(
                          color: Color.fromRGBO(188, 198, 209, 1),
                          fontSize: Width * 0.039,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: Height * 0.03),
            Stack(
              children: [
                Container(
                  // padding: EdgeInsets.all(10),
                  padding: EdgeInsets.only(top: 20),
                  height: Height * 0.79,
                  width: Width,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(242, 245, 248, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(31),
                      topRight: Radius.circular(31),
                    ),
                  ),

                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 9,
                                  crossAxisSpacing: 9,
                                  childAspectRatio: 1,
                                ),
                            itemCount: gridData.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  // height: Height*0.02,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.09),
                                        offset: const Offset(0.0, 4.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 0.0,
                                      ), //BoxShadow
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: Height * 0.017),
                                      Text(
                                        "${gridData[index]["title"]}",
                                        style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w600,
                                          fontSize: Height * 0.02,
                                        ),
                                      ),
                                      SizedBox(height: Height * 0.017),
                                      Text(
                                        "${gridData[index]["score"]}",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: Height * 0.06,
                                          color: Color.fromRGBO(0, 170, 65, 1),
                                        ),
                                      ),
                                      SizedBox(height: Height * 0.017),
                                      Text(
                                        "${gridData[index]["desc"]}",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: Height * 0.015,
                                          color: Color.fromRGBO(
                                            130,
                                            130,
                                            130,
                                            1,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: Height * 0.017),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),

                        SizedBox(height: Height * 0.02),

                        ///FIRST GRAPH
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            // height: 100,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(3, 3, 3, 0.086),
                                  offset: const Offset(0.0, 4.0),
                                  blurRadius: 4.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: Width * 0.08),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Lead Conversion Rate",
                                        style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(9, 33, 56, 1),
                                          fontSize: Height * 0.024,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SfCartesianChart(
                                  primaryXAxis: CategoryAxis(),
                                  series: <CartesianSeries>[
                                    LineSeries<ChartData, String>(
                                      color: Color.fromRGBO(2, 110, 215, 1),
                                      dataSource: [
                                        ChartData("MON", 20),
                                        ChartData("TUE", 38),
                                        ChartData("WED", 78),
                                        ChartData("THU", 35),
                                        ChartData("FRI", 49),
                                        ChartData("SAT", 70),
                                        ChartData("SUN", 60),
                                      ],
                                      xValueMapper:
                                          (ChartData data, _) => data.x,
                                      yValueMapper:
                                          (ChartData data, _) => data.y,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: Height * 0.02),

                        ///SECOND GRAPH
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            // height: 100,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(3, 3, 3, 0.086),
                                  offset: const Offset(0.0, 4.0),
                                  blurRadius: 4.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: Width * 0.08),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Monthly Sales Performance",
                                        style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(9, 33, 56, 1),
                                          fontSize: Height * 0.024,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SfCartesianChart(
                                  primaryXAxis: CategoryAxis(),
                                  series: <CartesianSeries>[
                                    ColumnSeries<ChartData, String>(
                                      color: Color.fromRGBO(2, 110, 215, 1),
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
                                      xValueMapper:
                                          (ChartData data, _) => data.x,
                                      yValueMapper:
                                          (ChartData data, _) => data.y,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: Height * 0.02),

                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            ),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.dashboard_rounded,
                                    color: Color.fromRGBO(37, 89, 138, 1),
                                  ),
                                  Text(
                                    "Dashboard",
                                    style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(37, 89, 138, 1),
                                      fontSize: Height * 0.014,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Icon(
                                    Icons.groups_2_outlined,
                                    color: Color.fromRGBO(37, 89, 138, 1),
                                  ),
                                  Text(
                                    "Leads",
                                    style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(37, 89, 138, 1),
                                      fontSize: Height * 0.014,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Icon(
                                    Icons.home_outlined,
                                    color: Color.fromRGBO(37, 89, 138, 1),
                                  ),
                                  Text(
                                    "Properties",
                                    style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(37, 89, 138, 1),
                                      fontSize: Height * 0.014,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color.fromRGBO(37, 89, 138, 1),
                                  ),
                                  Text(
                                    "Follow ups",
                                    style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(37, 89, 138, 1),
                                      fontSize: Height * 0.014,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Icon(
                                    Icons.person_outline,
                                    color: Color.fromRGBO(37, 89, 138, 1),
                                  ),
                                  Text(
                                    "Profile",
                                    style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(37, 89, 138, 1),
                                      fontSize: Height * 0.014,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;
}
