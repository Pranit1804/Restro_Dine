import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodTypes extends StatelessWidget {

  final title;

  FoodTypes(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: <Widget>[
          Container(
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                'assets/images/$title.jpg',
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 10,
                    color: Colors.black12)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Text(title,style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),),
        ],
      ),
    );
  }
}
