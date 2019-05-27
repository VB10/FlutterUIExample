import 'package:flutter/material.dart';
import 'package:oneframe/shared/styles/colors/main.dart';
import 'package:oneframe/shared/styles/input/main.dart';
import 'package:oneframe/shared/styles/text/main.dart';
import 'package:oneframe/shared/widgets/button/raised_button.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _name;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(
              "Welcome",
              style: welcomeTextStyle,
            ),
            SizedBox(height: 30),
            Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    autovalidate: false,
                    decoration: decoration("Enter your username: "),
                    onSaved: (value) => this._name = value,
                    validator: (value) {
                      if (value.length < 3) {
                        return 'a minimum of 3 characters is required';
                      }
                    },
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    autovalidate: false,
                    obscureText: true,
                    decoration: decoration("Enter your password: "),
                    onSaved: (value) => this._name = value,
                    validator: (value) {
                      if (value.length < 3) {
                        return 'a minimum of 3 characters is required';
                      }
                    },
                  ),
                  SizedBox(height: 30),
                  RaisedGradientButton(
                    child: Text(
                      'Login',
                      style: loginButtonStyle,
                    ),
                    gradient: LinearGradient(
                      colors: loginButtonGradient,
                    ),
                    onPressed: () {
                      print('Welcome');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
