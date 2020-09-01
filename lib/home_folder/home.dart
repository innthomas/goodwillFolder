import 'package:flutter/material.dart';
import 'package:thriftApp/accounts/new_account.dart';
import '../accounts/accounts.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        centerTitle: true,
        title: Text(
          "goodwill",
          style: TextStyle(
              color: Colors.yellowAccent,
              fontFamily: "Pacifico",
              fontSize: 40.0,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(9.0),
              height: 150,
              width: 400,
              color: Colors.green,
            ),
            Container(
              margin: EdgeInsets.all(9.0),
              color: Colors.blue,
              height: 400,
              width: 400,
              child: Center(
                child: GridView.count(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(
                    10.0,
                  ),
                  crossAxisCount: 1,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Account()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20.0)),
                          width: 40.0,
                          height: 60.0,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.account_box_outlined,
                                  size: 60.0,
                                ),
                              ),
                              SizedBox(
                                height: 1.0,
                              ),
                              Text(
                                "Accounts",
                                style: TextStyle(
                                  fontFamily: "Pacifico",
                                  fontSize: 40.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NewAccount()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.brown),
                        width: 90.0,
                        height: 90.0,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.account_box_outlined,
                                size: 60.0,
                              ),
                            ),
                            SizedBox(
                              height: 1.0,
                            ),
                            Text(
                              "New\n Account",
                              style: TextStyle(
                                fontFamily: "Pacifico",
                                fontSize: 30.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: .0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 40,
            ),
            title: Text("data"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 40,
            ),
            title: Text("data"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 40,
            ),
            title: Text("data"),
          ),
        ],
      ),
    );
  }
}
