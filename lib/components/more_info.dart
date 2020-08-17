import 'package:flutter/material.dart';

class MoreInfo extends StatelessWidget {

  final title;
  MoreInfo(this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.done,
          color: Colors.blue,
          size: 18,
        ),
        SizedBox(width: 8,),
        Text(title),
        SizedBox(height: 10,)
      ],
    );
  }
}
