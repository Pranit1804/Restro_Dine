import 'package:flutter/material.dart';
import 'package:food_delivery/screens/restuarant_list_screen.dart';

class TypesOfFood extends StatelessWidget {
  final title, noOfRestro, startColor, endColor;

  const TypesOfFood(this.title, this.noOfRestro, this.startColor, this.endColor);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(RestaurantListScreen.routeName, arguments: title);
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 90,
        width: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [startColor, endColor])),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 10,
              top: 45,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
//          Container(
//              height: 40,
//              width: 40,
//              child: Image.asset('assets/images/pizza.jpg')),
            Positioned(
              left: 10,
              top: 65,
              child: Text(
                '$noOfRestro Restaurants',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
