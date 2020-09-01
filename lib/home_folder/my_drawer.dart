import 'package:flutter/material.dart';

class MyDrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 40.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            radius: 100,
            backgroundImage: AssetImage('icons/inn4.jpeg'),
          ),
          Card(
            elevation: 30.0,
          ),
          IconButton(
              icon: Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          SizedBox(
            height: 30.0,
          ),
          IconButton(
              icon: Icon(
                Icons.settings,
                size: 60.0,
                color: Colors.white,
              ),
              onPressed: null),
          SizedBox(
            height: 60.0,
          ),
          IconButton(
              icon: Icon(
                Icons.account_box_outlined,
                size: 60.0,
                color: Colors.white,
              ),
              onPressed: null),
          SizedBox(height: 40.0),
          Text(
            "about goodwill",
            style: TextStyle(
              fontFamily: "Pacifico",
              wordSpacing: 2.0,
              color: Colors.white,
              fontSize: 30.0,
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.arrow_circle_down_rounded,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.teal[300],
      ),
    );
  }
}
