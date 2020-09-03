import 'package:flutter/material.dart';
import 'package:thriftApp/accounts/new_account.dart';
import 'package:thriftApp/home_folder/fab.dart';
import '../accounts/accounts.dart';
import 'my_drawer.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      drawer: Drawer(
        child: MyDrawerPage(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        flexibleSpace: Image.asset("icons/g.png"),
        shadowColor: Colors.black87,
        elevation: 15.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_drop_down_circle_outlined,
              size: 40.0,
              color: Colors.white,
            ),
            onPressed: null,
          ),
          SizedBox(
            width: 25.0,
          )
        ],
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.teal[300],
              ),
              margin: EdgeInsets.all(9.0),
              height: 150,
              width: 400,
              child: Image.asset("icons/kitten-playing.gif"),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.teal[300],
              ),
              margin: EdgeInsets.all(9.0),
              height: 400,
              width: 400,
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
                        height: 20.0,
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NewAccount()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(20.0)),
                        width: 40.0,
                        height: 20.0,
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
                              "New\nAccount",
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
                ],
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
            title: Text("home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.money_sharp,
              size: 40,
            ),
            title: Text("savings"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
              size: 40,
            ),
            title: Text("loan"),
          ),
        ],
      ),
      floatingActionButton: Fab(),
    );
  }
}
