import 'package:flutter/material.dart';
import 'package:food_delivery/providers/restaurant_details.dart';
import 'package:food_delivery/screens/main_screen.dart';
import 'package:food_delivery/screens/restaurant_detail_screen.dart';
import 'package:food_delivery/screens/restuarant_list_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: RestaurantDetails(),
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Search',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MainScreen(),
          routes: {
            MainScreen.routeName: (ctx) => MainScreen(),
            RestaurantDetailScreen.routeName: (ctx) => RestaurantDetailScreen(),
            RestaurantListScreen.routeName: (ctx) => RestaurantListScreen()
          }),
    );
  }
}
