import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/providers/restaurant_details.dart';
import 'package:provider/provider.dart';
import 'package:food_delivery/components/single_list_item.dart';

class RestaurantListScreen extends StatelessWidget {
  static const routeName = '/restaurant-list-screen';

  @override
  Widget build(BuildContext context) {
    final type = ModalRoute.of(context).settings.arguments as String;
    final data =
        Provider.of<RestaurantDetails>(context).getCategoryRestaurant(type);
    print('Data: ${data.length}');
    return Scaffold(
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
            'Pizza',
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
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '7 Restaurant near you',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (ctx, index) => SingleListItem(
                restaurantData: data[index],
                ),
            )
//            Column(
//              children: <Widget>[
//                SingleListItem(
//                  image: 'assets/images/pizza_hut.jpg',
//                  price: '200',
//                  foodType1: 'Fast food',
//                  foodType2: 'American',
//                  name: 'Pizza Hut',
//                  star: '4.5',
//                  time: '25',
//                ),
//                SingleListItem(
//                  image: 'assets/images/pizza_hut.jpg',
//                  price: '200',
//                  foodType1: 'Fast food',
//                  foodType2: 'American',
//                  name: 'Pizza Hut',
//                  star: '4.5',
//                  time: '25',
//                ),
//                SingleListItem(
//                  image: 'assets/images/pizza_hut.jpg',
//                  price: '200',
//                  foodType1: 'Fast food',
//                  foodType2: 'American',
//                  name: 'Pizza Hut',
//                  star: '4.5',
//                  time: '25',
//                ),
//
//              ],
//            )
          ],
        ),
      ),
    );
  }
}
