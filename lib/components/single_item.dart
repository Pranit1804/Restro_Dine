import 'package:flutter/material.dart';
import 'package:food_delivery/screens/restaurant_detail_screen.dart';

class SingleItem extends StatelessWidget {
  final data;

  const SingleItem(this.data);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(RestaurantDetailScreen.routeName, arguments: data);
      },
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 5),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              child: Hero(
                tag: data.image,
                child: Image.asset(
                  data.image,
                  height: 120,
                  width: 180,
                  fit: BoxFit.cover,
                ),
              ),
              borderRadius: BorderRadius.circular(10),
              clipBehavior: Clip.hardEdge,
            ),
            Positioned(
              left: 10,
              top: 80,
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black54),
                child: Text(
                  data.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
