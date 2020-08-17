import 'package:flutter/material.dart';
import 'package:food_delivery/components/home_page_top.dart';
import 'package:food_delivery/components/single_item.dart';
import 'package:food_delivery/components/types_of_food.dart';
import 'package:food_delivery/providers/restaurant_details.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  static const routeName = '/main-screen';

  @override
  Widget build(BuildContext context) {
    final restaurants = Provider.of<RestaurantDetails>(context).items;
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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HomePageTop(),
              Container(
                margin: EdgeInsets.only(top: 30, left: 10),
                child: Text(
                  'Favourite',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  itemCount: restaurants.length,
                  itemBuilder: (ctx, index) => SingleItem(
                      restaurants[index]),
                ),
              ),

//              SingleChildScrollView(
//                scrollDirection: Axis.horizontal,
//                child: Row(
//                  children: <Widget>[
//                    SingleItem('Parallax Restaurant',
//                        'assets/images/chicken_sandwich.jpg'),
//                    SingleItem(
//                        'The French Laundry', 'assets/images/french_laun.jpg'),
//                    SingleItem('Sasa Chillout', 'assets/images/sasa.jpg'),
//                    SingleItem('Pizza Hut', 'assets/images/pizza_hut.jpg'),
//                    SingleItem('Starbucks', 'assets/images/starbuck.jpg'),
//                  ],
//                ),
//              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  'Types of food',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54),
                  textAlign: TextAlign.start,
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      TypesOfFood(
                          'Pizza', '7', Colors.blue, Colors.lightBlueAccent),
                      TypesOfFood(
                          'Burger', '10', Colors.purple, Colors.purpleAccent),
                      TypesOfFood(
                          'Starters', '5', Colors.yellow, Colors.amberAccent),
                      TypesOfFood(
                          'Sushi', '7', Colors.green, Colors.greenAccent),
                      TypesOfFood(
                          'Sandwich', '7', Colors.red, Colors.deepOrange),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
