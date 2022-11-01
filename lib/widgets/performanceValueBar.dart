import 'package:flutter/material.dart';

class PerformanceBar extends StatefulWidget {
  late double val;
  PerformanceBar(this.val);

  @override
  State<PerformanceBar> createState() => _PerformanceBarState();
}

class _PerformanceBarState extends State<PerformanceBar> {
  late double temp;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 20,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.grey[300]),
            ),
            FractionallySizedBox(
              widthFactor: widget.val < 0
                  ? widget.val.abs()
                  : widget.val > 1
                      ? widget.val = 1
                      : widget.val,
              child: Container(
                decoration: BoxDecoration(
                    color: widget.val < 0 ? Colors.red[600] : Colors.green[900],
                    borderRadius: widget.val == 1
                        ? BorderRadius.all(Radius.circular(5))
                        : BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5))),
              ),
            )
          ],
        ));
  }
}
