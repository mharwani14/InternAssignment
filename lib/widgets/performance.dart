import 'package:flutter/material.dart';
import 'package:internship_assignment/main.dart';

class PerformanceLabel extends StatelessWidget {
  late int index;
  PerformanceLabel(this.index);

  @override
  Widget build(BuildContext context) {
    return Text(ll[index]['Label'].toString());
  }
}
