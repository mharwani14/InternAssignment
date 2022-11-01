import 'package:flutter/material.dart';

import '../main.dart';

class OverviewValue extends StatefulWidget {
  late String keyVal;
  OverviewValue(this.keyVal);

  @override
  State<OverviewValue> createState() => _OverviewValueState();
}

class _OverviewValueState extends State<OverviewValue> {
  @override
  Widget build(BuildContext context) {
    return mp[widget.keyVal] == null
        ? Text("-")
        : Text(mp[widget.keyVal].toStringAsFixed(2));
  }
}
