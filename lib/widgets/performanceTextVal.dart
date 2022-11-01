import 'package:flutter/material.dart';

import '../main.dart';

class PerformanceText extends StatelessWidget {
  late int ind;
  PerformanceText(this.ind);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Icon(
              ll[ind]['ChangePercent'] < 0
                  ? Icons.arrow_drop_down_outlined
                  : Icons.arrow_drop_up_outlined,
              color: ll[ind]['ChangePercent'] < 0
                  ? Colors.red[600]
                  : Colors.green[900]),
        ),
        Expanded(
          child: Text(
            ll[ind]['ChangePercent'].toStringAsFixed(1) + "%",
            style: TextStyle(
                color: ll[ind]['ChangePercent'] < 0
                    ? Colors.red[600]
                    : Colors.green[900]),
          ),
        ),
      ],
    );
  }
}
