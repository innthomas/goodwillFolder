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
          Text("day 1"),
          Text("day 2"),
          Text("day 3"),
          Text("day 4"),
          Text("day 5"),
          Text("day 6"),
          Text("day 7"),
          Text("day 8"),
          Text("day 9"),
          Text("day 10"),
          Text("day 11"),
          Text("day 12"),
          Text("day 13"),
          Text("day 14"),
          Text("day 15"),
          Text("day 16"),
          Text("day 17"),
          Text("day 18"),
          Text("day 19"),
          Text("day 20"),
          Text("day 21"),
          Text("day 22"),
          Text("day 23"),
          Text("day 24"),
          Text("day 25"),
          Text("day 26"),
          Text("day 27"),
          Text("day 28"),
          Text("day 29"),
          Text("day 30"),
          Text("day 31"),
        ],
      ),
    );
  }
}
