import 'package:flutter/material.dart';
import 'package:real_estate/view/common/bottom_nav_bar.dart';
import 'package:real_estate/view/common/custom_appbar.dart';
import 'package:real_estate/view/common/custom_text.dart';
import 'package:real_estate/view/common/drawer.dart';
import 'package:real_estate/view/profile/profile.dart';
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
    TextScaler textScaler = MediaQuery.of(context).textScaler;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(14, 39, 63, 1),
      appBar: CustomAppBar(
        title: "",
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
                      child: CustomText(
                        text: "Hey, Let’s Close Some Deals Today.",
                        textAlign: TextAlign.start,
                        color: Colors.white,
                        fontSize: textScaler.scale(19),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: height * 0.02),
                        CustomText(
                          text: "Sales Executive",
                          color: const Color.fromRGBO(188, 198, 209, 1),
                          fontSize: textScaler.scale(16),
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: height * 0.05,
                    top: height * 0.025,
                  ),
                  width: width,
                  height: height - (height * 0.25),
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
                          spacing: width * 0.04,
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
                                      CustomText(
                                        text: data["title"],
                                        fontWeight: FontWeight.w600,
                                        fontSize: textScaler.scale(16),
                                      ),
                                      SizedBox(height: height * 0.01),
                                      CustomText(
                                        text: data["score"],
                                        fontWeight: FontWeight.w500,
                                        fontSize: textScaler.scale(42),
                                        color: const Color.fromRGBO(
                                          0,
                                          170,
                                          65,
                                          1,
                                        ),
                                      ),
                                      CustomText(
                                        text: data["desc"],
                                        fontWeight: FontWeight.w400,
                                        fontSize: textScaler.scale(13),
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                        ),
                        SizedBox(height: height * 0.02),
                        width > 1000
                            ? Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: buildGraphContainer(
                                    "Lead Conversion Rate",
                                    getLineChart(),
                                  ),
                                ),
                                SizedBox(width: width * 0.02),
                                Expanded(
                                  child: buildGraphContainer(
                                    "Monthly Sales Performance",
                                    getBarChart(),
                                  ),
                                ),
                              ],
                            )
                            : Column(
                              children: [
                                buildGraphContainer(
                                  "Lead Conversion Rate",
                                  getLineChart(),
                                ),
                                SizedBox(height: height * 0.02),
                                buildGraphContainer(
                                  "Monthly Sales Performance",
                                  getBarChart(),
                                ),
                              ],
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
    TextScaler textScaler = MediaQuery.of(context).textScaler;

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
          CustomText(
            text: title,
            fontWeight: FontWeight.w600,
            fontSize: textScaler.scale(18),
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
      series: [
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
          xValueMapper: (data, _) => data.x,
          yValueMapper: (data, _) => data.y,
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
