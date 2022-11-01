import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:internship_assignment/widgets/mainOverview.dart';
import 'package:internship_assignment/widgets/mainPerfomrnace.dart';
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

Map mp = {};
String respBody = "";
List ll = [];

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PerformanceOverview(),
    );
  }
}

class PerformanceOverview extends StatefulWidget {
  const PerformanceOverview({Key? key}) : super(key: key);

  @override
  State<PerformanceOverview> createState() => _PerformanceOverviewState();
}

class _PerformanceOverviewState extends State<PerformanceOverview> {
  Future<void> yourOverview() async {
    http.Response response = await http.get(Uri.parse(
        "https://api.stockedge.com/Api/SecurityDashboardApi/GetCompanyEquityInfoForSecurity/5051?lang=en"));
    int statusCode = response.statusCode;
    if (statusCode == 200) {
      setState(() {
        respBody = response.body;
        mp = jsonDecode(respBody);
      });
    }
  }

  Future<void> yourPerformance() async {
    http.Response response = await http.get(Uri.parse(
        "https://api.stockedge.com/Api/SecurityDashboardApi/GetTechnicalPerformanceBenchmarkForSecurity/5051?lang=en"));
    int statusCode = response.statusCode;
    if (statusCode == 200) {
      setState(() {
        respBody = response.body;
        ll = jsonDecode(respBody);
      });
    }
  }

  @override
  void initState() {
    yourOverview();
    yourPerformance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: MainOverview()),
            Expanded(child: MainPerformance())
          ],
        ),
      ),
    );
    // Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: [
    //     PerformanceText(0),
    //     PerformanceText(1),
    //     PerformanceText(2),
    //     PerformanceText(3),
    //     PerformanceText(4),
    //     PerformanceText(5),
    //     PerformanceText(6),
    //     PerformanceText(7),
    //   ],
    // )
//

    //
    // Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: [
    //     PerformanceLabel(0),
    //     PerformanceLabel(1),
    //     PerformanceLabel(2),
    //     PerformanceLabel(3),
    //     PerformanceLabel(4),
    //     PerformanceLabel(5),
    //     PerformanceLabel(6),
    //     PerformanceLabel(7),
    //   ],
    // )
  }
}
