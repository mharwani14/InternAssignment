import 'package:flutter/material.dart';

import '../main.dart';

class ExtractedRow extends StatelessWidget {
  late int value;
  late String keyValue;

  ExtractedRow(this.keyValue, this.value);

  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(mp.keys.elementAt(value).toString()),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            SizedBox(
              width: 10,
            ),
            Container(
              child: mp[keyValue]==null? Text("-") : Text(mp[keyValue].toString()) ,
            )
          ],
        )
      ],
    );
  }
}
