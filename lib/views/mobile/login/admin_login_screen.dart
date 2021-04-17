import 'package:flutter/material.dart';
import 'package:swiggy_ui/ui/screens/home.dart';

class AdminLoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _success;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _signInWithEmailAndPassword() async {
    var email = _emailController.text;
    var password = _passwordController.text;

    if (email == 'admin' && password == 'admin') {
      setState(() {
        _success = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Admin Login Page'),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(
                      width: 200,
                      height: 150,
                      /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                      child: Image.asset('assets/images/admin.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      hintText: 'Enter admin email'),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please enter admin email';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      hintText: 'Enter admin password'),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please enter admin password';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: Container(
                  height: 50,
                  width: 250,
                  child: RaisedButton(
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        _signInWithEmailAndPassword();
                        if (_success == true) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => AdminScreen()));
                        }
                      }
                    },
                    child: Text(
                      'Login',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(fontSize: 21.0),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
