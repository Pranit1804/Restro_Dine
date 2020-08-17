import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/components/food_type.dart';
import 'package:food_delivery/components/more_info.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class RestaurantDetailScreen extends StatelessWidget {

  static const routeName = '/restaurant-detail-screen';

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute
        .of(context)
        .settings
        .arguments as Restaurant;
    final types = data.type;
    print('Type: ${types.length}');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.blue,
          onPressed: () {},
          iconSize: 19,
        ),
        title: Container(
          margin: EdgeInsets.only(left: 10),
          child: Text(
            'Restro Dine',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.info_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              data.name,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Hero(
                tag: data.image,
                child: Image.asset(
                  data.image,
                  height: 210,
                  width: 345,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Andheri, Mumbai',
              style:
              TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 20,
                ),
                Text('${data.star} (245)'),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.info_outline, color: Colors.black, size: 18),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '50% OFF',
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Food Types',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: types.length,
                itemBuilder: (ctx, index) => FoodTypes(types[index]),
              ),
            ),
//
            SizedBox(
              height: 30,
            ),
            Text(
              'More Info',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            MoreInfo('Wifi'),
            SizedBox(height: 5,),
            MoreInfo('Wheelchair Accessible'),
            SizedBox(height: 5,),
            MoreInfo('Indoor Seating'),
          ],
        ),
      ),
    );
  }
}
