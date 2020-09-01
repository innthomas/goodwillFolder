import 'package:flutter/material.dart';
import 'account_detail.dart';

class MyListTile extends StatefulWidget {
  @override
  _MyListTileState createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  _showMaterialDialog() {
    showDialog(
      barrierColor: Colors.yellowAccent[200],
      context: context,
      builder: (_) => new AlertDialog(
        elevation: 30.0,
        title: new Text("John Doe: 1903"),
        content: new TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(hintText: "amount"),
        ),
        actions: <Widget>[
          RaisedButton(
            child: Text(
              "withdraw",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red[900]),
            ),
            onPressed: () {
              Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text('withdrawal...new bal: N69,000')));
              Navigator.of(context).pop();
            },
          ),
          SizedBox(
            width: 90,
          ),
          RaisedButton(
            elevation: 40.0,
            child: Text(
              "deposit",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green[700],
              ),
            ),
            onPressed: () {
              Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text('deposit...new bal: N69,000')));
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      hoverColor: Colors.white,
      visualDensity: VisualDensity.compact,
      dense: false,
      contentPadding: EdgeInsets.all(8.0),
      selectedTileColor: Colors.green[100],
      tileColor: Colors.greenAccent,
      leading: Icon(Icons.account_box),
      trailing: Text(
        "Bal: N23,000",
        style: TextStyle(fontSize: 30.0),
      ),
      title: Text(
        "John Doe",
        style: TextStyle(
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Text(
        "acc : 1903",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      onLongPress: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Accountdetail()),
        );
      },
      onTap: () {
        _showMaterialDialog();
      },
    );
  }
}
