import 'package:flutter/material.dart';
import 'package:swiggy_ui/views/mobile/login/login_screen.dart';
import 'shared/app_theme.dart';
import 'views/mobile/mobile_screen.dart';
import 'widgets/responsive.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TakeOut',
      debugShowCheckedModeBanner: false,
      theme: appPrimaryTheme(),
      home: Responsive(
        mobile: LoginPage(),
      ),
    );
  }
}
