import 'package:flutter/material.dart';
import '../accounts/listTile_model.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        toolbarHeight: 100,
        actions: [
          SizedBox(
            width: 40.0,
          ),
          IconButton(
            icon: Icon(
              Icons.search_outlined,
              size: 40.0,
              color: Colors.white,
            ),
            onPressed: null,
          ),
          SizedBox(
            width: 45,
          )
        ],
        centerTitle: true,
        title: Text(
          "accounts",
          style: TextStyle(
            fontFamily: "Pacifico",
            fontSize: 40.0,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyListTile(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyListTile(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyListTile(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyListTile(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyListTile(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyListTile(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyListTile(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyListTile(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyListTile(),
          ),
        ],
      ),
    );
  }
}
