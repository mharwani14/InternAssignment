import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../main.dart';
import 'overviewKey.dart';
import 'overviewValue.dart';

class MainOverview extends StatefulWidget {
  const MainOverview({Key? key}) : super(key: key);

  @override
  State<MainOverview> createState() => _MainOverviewState();
}

class _MainOverviewState extends State<MainOverview> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Overview",
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              OverviewKey('Sector'),
              OverviewKey('Industry'),
              OverviewKey('Market Cap.'),
              OverviewKey('Enterprise Value(EV)'),
              OverviewKey("Book value/share"),
              OverviewKey('Price earning Ratio(PE)'),
              OverviewKey('PEG Ratio'),
              OverviewKey('Dividend Yield'),
            ],
          ),
        ),
        // SizedBox(
        //   width: 600,
        // ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "",
                style: TextStyle(fontSize: 15),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Row(
                children: [
                  Expanded(child: Icon(FontAwesomeIcons.bank)),
                  // SizedBox(
                  //   width: 20,
                  // ),
                  Expanded(child: Text(mp['Sector'].toString())),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Icon(FontAwesomeIcons.bank)),
                  // SizedBox(width: 20),
                  Expanded(child: Text(mp['Industry'].toString())),
                ],
              ),
              OverviewValue('MCAP'),
              OverviewValue('EV'),
              OverviewValue('BookNavPerShare'),
              OverviewValue('TTMPE'),
              OverviewValue('PEGRatio'),
              OverviewValue('Yield'),
            ],
          ),
        ),
        // SizedBox(
        //   width: 20,
        // ),
      ],
    );
  }
}
