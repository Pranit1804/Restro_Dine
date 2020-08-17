import 'package:flutter/material.dart';
import 'package:food_delivery/screens/restaurant_detail_screen.dart';

class SingleListItem extends StatelessWidget {

  final restaurantData;

  const SingleListItem({this.restaurantData});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(RestaurantDetailScreen.routeName, arguments: restaurantData);
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              child: Hero(
                tag: restaurantData.image,
                child: Image.asset(
                  restaurantData.image,
                  height: 85,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.hardEdge,
            ),
            Positioned(
              left: 60,
              top: 56,
              child: Container(
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 5),
                      child: Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 5, top: 7),
                        child: Text(restaurantData.star,style: TextStyle(fontWeight: FontWeight.bold),))
                  ],
                ),
              ),
            ),
            Positioned(
              left: 150,
              child: Text(
                restaurantData.name,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              left: 150,
              top:25,
              child: Text(
                '${restaurantData.foodType1}, ${restaurantData.foodType2}',
                style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              left: 150,
              top:60,
              child: Row(
                children: <Widget>[
                  Icon(Icons.access_time, size: 16,),
                  Text('${restaurantData.time}m'),
                  SizedBox(width: 20,),
                  Text('₹${restaurantData.price}/person')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
