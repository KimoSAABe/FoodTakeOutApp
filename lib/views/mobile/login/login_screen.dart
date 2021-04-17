import 'package:flutter/material.dart';
import 'package:swiggy_ui/views/mobile/mobile_screen.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 50.0,
              width: 250.0,
              child: new RaisedButton(
                  child: Text(
                    'Login as Customer',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontSize: 21.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MobileScreen()),
                    );
                  }),
            ),
            SizedBox(
              height: 50.0,
              width: 250.0,
              child: new RaisedButton(
                  child: Text(
                    'Login as Admin',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontSize: 21.0),
                  ),
                  onPressed: () {
                    return MobileScreen();
                  }),
            ),
          ],
        ),
      )),
    );
  }
}
