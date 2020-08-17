import 'package:flutter/cupertino.dart';
import 'package:food_delivery/models/restaurant.dart';

class RestaurantDetails with ChangeNotifier {
  final _restaurants = [
    Restaurant(
        image: 'assets/images/pizza_hut.jpg',
        price: '200',
        foodType1: 'Fast food',
        foodType2: 'American',
        name: 'Pizza Hut',
        star: '4.5',
        time: '25',
        type: [
          'Pizza',
          'Breakfast',
        ]),
    Restaurant(
        image: 'assets/images/mau.jpg',
        price: '200',
        foodType1: 'Fast food',
        foodType2: 'Lunch',
        name: 'Mau Restaurant',
        star: '4.5',
        time: '40',
        type: [
            'Starters',
          'Lunch',
        ]),
    Restaurant(
        image: 'assets/images/sasa.jpeg',
        price: '100',
        foodType1: 'Fast food',
        foodType2: 'Starters',
        name: 'Sasa Chillout',
        star: '3.8',
        time: '30',
        type: ['Pizza', 'Breakfast', 'Starters', 'Burgers']),
    Restaurant(
        image: 'assets/images/starbuck.jpg',
        price: '300',
        foodType1: 'Fast food',
        foodType2: 'American',
        name: 'Starbuck',
        star: '4.8',
        time: '25',
        type: [
          'Dessert',
          'Coffee',
        ]),
    Restaurant(
        image: 'assets/images/dominos.jpg',
        price: '200',
        foodType1: 'Fast food',
        foodType2: 'American',
        name: 'Dominos',
        star: '4.3',
        time: '20',
        type: [
          'Pizza',
          'Breakfast',
        ]),
    Restaurant(
        image: 'assets/images/chicken_sandwich.jpg',
        price: '80',
        foodType1: 'Starter',
        foodType2: 'American',
        name: 'Parallax Restaurant',
        star: '4.9',
        time: '40',
        type: [
          'Lunch',
          'Starter',
          'Burger',
        ]),
    Restaurant(
        image: 'assets/images/french_laun.jpg',
        price: '200',
        foodType1: 'Dessert',
        foodType2: 'Italian',
        name: 'The French Laundry',
        star: '4.9',
        time: '45',
        type: ['Dessert', 'Lunch', 'Starters', 'Sushi']),
  ];

  List<Restaurant> get items {
    return _restaurants;
  }

  List<Restaurant> getCategoryRestaurant(String type) {
    return _restaurants
        .where((element) => element.type.contains(type))
        .toList();
  }

  List<Restaurant> getSearched(String value){
    return _restaurants.where((element) => element.name == value).toList();
  }
}
