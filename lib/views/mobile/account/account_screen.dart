import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/widgets/custom_divider_view.dart';
import 'package:swiggy_ui/widgets/dotted_seperator_view.dart';

class AccountScreen extends StatelessWidget {
  final List<String> titles = [
    'My Account',
    'Menu Settings',
    'TakeOut Wallet',
    'Help',
  ];
  final List<String> body = [
    'Address, Payments, Favourties, Referrals & Offers',
    'Edit Menu, Add/Remove Dishes, Update Pricing',
    'Daily Earnings & Transactions',
    'FAQ & Links',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _AppBar(),
              ListView.builder(
                shrinkWrap: true,
                itemCount: titles.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => _ListItem(
                  title: titles[index],
                  body: body[index],
                  isLastItem: (titles.length - 1) == index,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 15.0),
                height: 50.0,
                color: Colors.grey[200],
                child: Text(
                  'CURRENT ORDERS',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      .copyWith(color: Colors.grey[700], fontSize: 12.0),
                ),
              ),
              _PastOrderListView(),
            ],
          ),
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final subtitleStyle = Theme.of(context).textTheme.bodyText1;

    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'NAMMA VEEDU \nVASANTA BHAVAN',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              InkWell(
                child: Text(
                  'EDIT',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontSize: 17.0, color: darkOrange),
                ),
                onTap: () {},
              )
            ],
          ),
          UIHelper.verticalSpaceSmall(),
          Row(
            children: <Widget>[
              Text('1234567890', style: subtitleStyle),
              UIHelper.horizontalSpaceSmall(),
              ClipOval(
                child: Container(
                  height: 3.0,
                  width: 3.0,
                  color: Colors.grey[700],
                ),
              ),
              UIHelper.horizontalSpaceSmall(),
              Text('vinothvino@icloud.com', style: subtitleStyle)
            ],
          ),
          UIHelper.verticalSpaceLarge(),
          CustomDividerView(
            dividerHeight: 1.8,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

class _ListItem extends StatelessWidget {
  const _ListItem({
    Key key,
    @required this.title,
    @required this.body,
    this.isLastItem = false,
  })  : assert(title != '', body != ''),
        super(key: key);

  final String title;
  final String body;
  final bool isLastItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: 15.0),
                    ),
                    UIHelper.verticalSpaceExtraSmall(),
                    Text(
                      body,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 13.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Spacer(),
              UIHelper.horizontalSpaceSmall(),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
          UIHelper.verticalSpaceLarge(),
          isLastItem
              ? SizedBox()
              : CustomDividerView(
                  dividerHeight: 0.8,
                  color: Colors.black26,
                ),
        ],
      ),
    );
  }
}

class _PastOrderListView extends StatelessWidget {
  final List<String> customerss = [
    'Customer id: 47',
    'Customer id: 48',
    'Customer id: 49',
  ];

  final List<String> foods = [
    'Pepper BBQ x 1',
    'Chicken Noodles x 1',
    'Milk Tea x 1',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListView.builder(
          shrinkWrap: true,
          itemCount: customerss.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => _PastOrdersListItemView(
            customers: customerss[index],
            foodItem: foods[index],
          ),
        ),
        TextButton(
          child: Text(
            'VIEW MORE ORDERS',
            style: Theme.of(context)
                .textTheme
                .subtitle2
                .copyWith(color: darkOrange),
          ),
          onPressed: () {},
        ),
        UIHelper.verticalSpaceSmall(),
        CustomDividerView(),
        Row(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 10.0),
              height: 50.0,
              child: Text(
                'LOGOUT',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    .copyWith(fontSize: 16.0),
              ),
            ),
            Spacer(),
            Icon(Icons.power_settings_new),
            UIHelper.horizontalSpaceSmall(),
          ],
        ),
        Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top: 20.0),
          height: 130.0,
          color: Colors.grey[200],
          child: Text(
            'App Version v3.0.0',
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(color: Colors.grey[700], fontSize: 13.0),
          ),
        )
      ],
    );
  }
}

class _PastOrdersListItemView extends StatelessWidget {
  const _PastOrdersListItemView({
    Key key,
    @required this.customers,
    @required this.foodItem,
  })  : assert(customers != '', foodItem != ''),
        super(key: key);

  final String customers;
  final String foodItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      customers,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    UIHelper.verticalSpaceSmall(),
                    Row(
                      children: <Widget>[
                        Text('Rs. 120'),
                        UIHelper.horizontalSpaceExtraSmall(),
                        Icon(Icons.keyboard_arrow_right,
                            color: Colors.grey[600])
                      ],
                    )
                  ],
                ),
                Spacer(),
                Text('Pending...', style: Theme.of(context).textTheme.subtitle2),
                UIHelper.horizontalSpaceSmall(),
                ClipOval(
                  child: Container(
                    padding: const EdgeInsets.all(2.2),
                    color: Colors.green,
                    child: Icon(Icons.check, color: Colors.white, size: 14.0),
                  ),
                )
              ],
            ),
          ),
          UIHelper.verticalSpaceSmall(),
          DottedSeperatorView(),
          UIHelper.verticalSpaceMedium(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(foodItem),
              UIHelper.verticalSpaceExtraSmall(),
              Text('April 18, 2:11 AM'),
              UIHelper.verticalSpaceSmall(),
              CustomDividerView(dividerHeight: 1.5, color: Colors.black)
            ],
          )
        ],
      ),
    );
  }
}
