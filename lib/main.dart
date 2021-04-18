import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/views/mobile/login/login_screen.dart';
import 'shared/app_theme.dart';
import 'views/mobile/mobile_screen.dart';
import 'widgets/responsive.dart';
import 'package:fancy_on_boarding/fancy_on_boarding.dart';

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
        mobile: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FancyOnBoarding(
          pageList: [
            PageModel(
                color: Colors.orange,
                heroImagePath: "assets/images/introduction1.png",
                title: Center(
                  child: Text(
                    "Welcome to TakeOut",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
                body: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Text(
                      "Find all popular and best restaurants of city",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                icon: Icon(
                  Icons.location_city_sharp,
                  color: Colors.orange,
                )),
            PageModel(
                color: Color(0xffFF8944),
                heroImagePath: "assets/images/introduction6.png",
                title: Center(
                  child: Text(
                    "Popular Restaurants",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
                body: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Text(
                      "City top standard restaurants with great chef and taste",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                icon: Icon(
                  Icons.hot_tub_sharp,
                  color: Color(0xffFF8944),
                )),
            PageModel(
                color: Color(0xffFFE044),
                heroImagePath: "assets/images/introduction4.png",
                title: Center(
                  child: Text(
                    "Easy Order \nEasy TakeOut",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
                body: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Text(
                      "Make order and pick it up from restaurant",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Color(0xffFFE044),
                )),
            PageModel(
                color: Colors.orange[300],
                heroImagePath: "assets/images/introduction7.png",
                title: Center(
                  child: Text(
                    "Have Fun",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
                body: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Text(
                      "Work. Eat. Sleep. Repeat.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                icon: Icon(
                  Icons.fastfood_outlined,
                  color: Colors.orange[300],
                ))
          ],
          bottomMargin: 10,
          showSkipButton: true,
          skipButton: Padding(
            padding: EdgeInsets.only(top: 10, right: 10),
            child: FlatButton(
              child: Text(
                'Skip',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              textColor: Colors.white,
              color: Colors.transparent,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
                print("On Done Pressed1");
              },
            ),
          ),
          onSkipButtonPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
            print("On Skip pressed");
          },
          onDoneButtonPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
            print("On Done Pressed");
          },
          doneButton: FlatButton(
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              textColor: Colors.white,
              color: Colors.transparent,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
                print("On Done Pressed1");
              },
            ),
          ),
        );
  }
}
