import 'package:flutter/material.dart';
import 'package:thriftApp/accounts/account_detail.dart';
import 'package:thriftApp/accounts/bank_account.dart';
import 'package:thriftApp/accounts/customers_list.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showScaffold(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: customers.length,
        itemBuilder: (context, index) {
          final BankAccount account = customers[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.person),
              onLongPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Accountdetail()),
                );
              },
              onTap: () {
                _showDialog();
              },
              contentPadding: EdgeInsets.all(10.0),
              visualDensity: VisualDensity.compact,
              tileColor: Colors.teal[200],
              title: Text("${account.name} ${account.surname}"),
              subtitle: Text(
                "${account.accountNumber}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Text("N ${account.accountBalance}"),
            ),
          );
        },
      ),
    );
  }

  void _showDialog() {
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
              _showScaffold("This is a SnackBar.");
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
              _showScaffold("This is a SnackBar.");
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
