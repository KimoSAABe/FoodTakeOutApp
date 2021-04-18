import 'package:swiggy_ui/utils/app_colors.dart';

import 'transactions.dart';

import '../../global.dart';
import '../widgets/widgets.dart';
import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        iconTheme: IconThemeData(color: Colors.black87),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(15.0,0.0,15.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  image: DecorationImage(
                      image: AssetImage("assets/images/hotelBig.png"),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 120,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(Icons.star, color: Colors.yellow,),
                              Icon(Icons.star, color: Colors.yellow,),
                              Icon(Icons.star, color: Colors.yellow,),
                              Icon(Icons.star, color: Colors.yellow,),
                              Icon(Icons.star, color: Colors.white,),
                              Text(" 250 Reviews", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13
                              ),)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text("Our Motto. Eat. Sleep. Work. Repeat.", style: TextStyle(
                      color: Colors.white,
                      fontSize: 12
                  ),)
                ],
              ),
            ),
            Text(
              "Namma Veedu Vasanta Bhavan",
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .apply(color: Colors.black54),
              textScaleFactor: 0.90,
            ),
            Text(
              "Hello, Mr. $username",
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .apply(color: darkOrange, fontWeightDelta: 2),
              textScaleFactor: 0.80,
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                color: darkOrange,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Today's Earnings",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 11.0,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Rs. "),
                        TextSpan(
                          text: "23,500.00",
                          style: Theme.of(context)
                              .textTheme
                              .display1
                              .apply(color: Colors.white, fontWeightDelta: 2),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 11.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 11.0),
                          color: darkOrange,
                          onPressed: () {},
                          child: Text(
                            'Details',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(9.0),
                              side: BorderSide(color: Colors.white)),
                        ),
                      ),
                      Flexible(
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 11.0),
                          color: darkOrange,
                          onPressed: () {},
                          child: Text(
                            'Cash',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(9.0),
                              side: BorderSide(color: Colors.white)),
                        ),
                      ),
                      Flexible(
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 11.0),
                          color: Colors.orange,
                          onPressed: () {},
                          child: Text(
                            'Deposit',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(9.0),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0),
              height: MediaQuery.of(context).size.height / 4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: historyContainerList.length,
                itemBuilder: (ctx, i) {
                  return HistoryContainer(id: i);
                },
              ),
            ),
            Divider(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Current Orders",
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .apply(color: darkOrange, fontWeightDelta: 2),
                  ),
                ),
                Column(
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.orange,
                      child: Text("View All Orders", style: TextStyle(color: Colors.white),),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TransactionsScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
