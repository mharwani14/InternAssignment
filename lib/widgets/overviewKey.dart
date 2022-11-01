import 'package:flutter/material.dart';

import '../main.dart';

class OverviewKey extends StatelessWidget {
  late String val;

  OverviewKey(this.val);

  @override
  Widget build(BuildContext context) {
    return Text(
      val,
      style: TextStyle(color: Colors.blue[700]),
    );
  }
}
