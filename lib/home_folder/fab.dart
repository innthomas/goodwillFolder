import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';

import 'package:thriftApp/accounts/bank_account.dart';
import 'package:thriftApp/accounts/customers_list.dart';

class Fab extends StatefulWidget {
  @override
  _FabState createState() => _FabState();
}

class _FabState extends State<Fab> {
  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      splashColor: Colors.greenAccent,
      elevation: 12.0,
      backgroundColor: Colors.tealAccent,
      child: Icon(
        Icons.search,
        color: Colors.black87,
      ),
      tooltip: "search accounts",
      onPressed: () => showSearch(
        context: context,
        delegate: SearchPage<BankAccount>(
          barTheme: ThemeData(primaryColor: Colors.teal[500]),
          builder: (account) => ListTile(
            //key: _scaffoldKey,
            onTap: () {},
            tileColor: Colors.teal[100],
            title: Text("${account.name} ${account.surname}"),
            subtitle: Text("${account.accountNumber}"),
            trailing: Text("N ${account.accountBalance}"),
          ),
          filter: (account) =>
              [account.name, account.surname, account.accountNumber.toString()],
          items: customers,
          searchLabel: "search accounts",
          suggestion: Center(
            child: Text('Filter people by name, surname or countnumber'),
          ),
          failure: Center(
            child: Text('No person found :('),
          ),
        ),
      ),
    );
  }
}
