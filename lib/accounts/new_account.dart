import 'package:flutter/material.dart';

class NewAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[500],
      appBar: AppBar(
        backgroundColor: Colors.teal[500],
        title: Text("account opening form"),
      ),
      body: MyCustomForm(),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          height: 700,
          width: 400,
          decoration: BoxDecoration(color: Colors.yellow[200]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(9.0, 9.0, 9.0, 9.0),
                child: TextFormField(
                  decoration: InputDecoration(hintText: 'Innocent Thomas'),
                  keyboardType: TextInputType.name,
                  focusNode: FocusNode(),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter name';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  maxLength: 4,
                  decoration: InputDecoration(
                      hintText: '1001',
                      contentPadding: EdgeInsets.symmetric(horizontal: 40.0)),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter account number';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: TextFormField(
                  maxLength: 11,
                  decoration: InputDecoration(hintText: '08036184619'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter phone number';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: RaisedButton(
                  textColor: Colors.blueGrey[600],
                  highlightElevation: 20.0,
                  elevation: 20.0,
                  splashColor: Colors.greenAccent,
                  onPressed: () {
                    // Validate returns true if the form is valid, or false
                    // otherwise.
                    if (_formKey.currentState.validate()) {
                      // If the form is valid, display a Snackbar.
                      Scaffold.of(context).showSnackBar(SnackBar(
                          content:
                              Text('new account {John Doe: 1904} created')));
                    }
                    //Navigator.pop(context);
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
