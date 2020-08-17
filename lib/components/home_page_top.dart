import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class HomePageTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, left: 20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Hello, ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'What would you \n like to eat?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Container(
              height: 54,
              margin: EdgeInsets.only(top: 30, right: 20),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.blue,
                    iconSize: 20,
                  ),
                  Expanded(
                      child: TextField(
                      decoration: InputDecoration(
                          hintText: "Find your Restaurant",
                          hintStyle: TextStyle(fontSize: 14),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: Colors.black12)
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 20),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 60,
                            color: Colors.black12)
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.access_time),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Now')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                        height: 50,
                        margin: EdgeInsets.only(left: 10, right: 20),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.location_on),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Nerul Navi Mumbai')
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white38,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 60,
                                color: Colors.black12)
                          ],
                        )),
                  )
                ],
              ),
            ),
          ],
      ),
    );
  }
}
