import 'package:flutter/material.dart';

class Accountdetail extends StatefulWidget {
  @override
  _AccountdetailState createState() => _AccountdetailState();
}

class _AccountdetailState extends State<Accountdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        title: Text("John Doe"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          Text("day 1  -- 1000"),
          Text("day 2  -- 1000"),
          Text("day 3  -- 1000"),
          Text("day 4  -- 0"),
          Text("day 5  -- 2000"),
          Text("day 6  -- 1000"),
          Text("day 7  -- 0"),
          Text("day 8  -- 0"),
          Text("day 9  -- 0"),
          Text("day 10 -- 3000"),
          Text("day 11 -- 1000"),
          Text("day 12 -- 1000"),
          Text("day 13 -- 1000"),
          Text("day 14 -- 1000"),
          Text("day 15 -- 1000"),
          Text("day 16 -- 1000"),
          Text("day 17 -- 1000"),
          Text("day 18 -- 1000"),
          Text("day 19 -- 1000"),
          Text("day 20 -- 1000"),
          Text("day 21 -- 1000"),
          Text("day 22 -- 1000"),
          Text("day 23 -- 1000"),
          Text("day 24 -- 1000"),
          Text("day 25 -- 1000"),
          Text("day 26 -- 1000"),
          Text("day 27 -- 1000"),
          Text("day 28 -- 1000"),
          Text("day 29 -- 1000"),
          Text("day 30 -- 1000"),
          Text("day 31 -- 1000"),
          Text("Total deposit: N31,000"),
          Text(
            "less commission: N1,000",
            style: TextStyle(color: Colors.red),
          ),
          Text("available balance:"),
          Text(
            ">>>>>>>>        30,000",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.green[800],
            ),
          )
        ],
      ),
    );
  }
}
