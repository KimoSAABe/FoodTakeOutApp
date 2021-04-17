import 'package:flutter/material.dart';
import 'package:swiggy_ui/models/tab_desktop/order_menu.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/views/mobile/payment/payment_screen.dart';
import 'package:swiggy_ui/widgets/custom_divider_view.dart';
import 'package:swiggy_ui/widgets/veg_badge_view.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _OrderView(),
                CustomDividerView(dividerHeight: 15.0),
                _CouponView(),
                CustomDividerView(dividerHeight: 15.0),
                _BillDetailView(),
                _DecoratedView(),
                _AddressPaymentView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _OrderView extends StatefulWidget {
  @override
  _OrderViewState createState() => _OrderViewState();
}

class _OrderViewState extends State<_OrderView> {
  int cartCount = 1;

  var cartItems = OrderMenu.getCartItems();
  var list = new List<int>.generate(8,(i) => 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          UIHelper.verticalSpaceMedium(),
          Row(
            children: <Widget>[
              Expanded(
                child: ListView(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  children: List.generate(
                    cartItems.length,
                        (index) => Container(
                      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 4.0),
                      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.grey),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Image.asset(
                                cartItems[index].image,
                                height: 60.0,
                                width: 60.0,
                              ),
                              UIHelper.horizontalSpaceSmall(),
                              Column(
                                children: <Widget>[
                                  Text(cartItems[index].title, style: Theme.of(context).textTheme.subtitle2),
                                  //UIHelper.verticalSpaceExtraSmall(),
                                ],
                              ),
                            ],
                          ),
                          UIHelper.verticalSpaceLarge(),
                          Row(
                            children: <Widget>[
                              UIHelper.horizontalSpaceSmall(),
                              VegBadgeView(),
                              UIHelper.horizontalSpaceSmall(),
                              Flexible(
                                child: Text(
                                  cartItems[index].item,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ],
                          ),
                          UIHelper.verticalSpaceLarge(),
                          Row(
                            children: <Widget>[
                              UIHelper.horizontalSpaceSmall(),
                              UIHelper.horizontalSpaceSmall(),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                height: 35.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    InkWell(
                                      child: Icon(Icons.remove, color: Colors.green),
                                      onTap: () {
                                        if (list[index] > 0) {
                                          setState(() {
                                            list[index] -= 1;
                                          });
                                        }
                                      },
                                    ),
                                    Spacer(),
                                    Text(list[index].toString(), style: Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 16.0)),
                                    Spacer(),
                                    InkWell(
                                      child: Icon(Icons.add, color: Colors.green),
                                      onTap: () {
                                        setState(() {
                                          list[index] += 1;
                                        });
                                      },
                                    )
                                  ],
                                ),
                              ),
                              UIHelper.horizontalSpaceSmall(),
                              Text(
                                'Rs. ' + (list[index]*cartItems[index].price).toString(),
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              UIHelper.horizontalSpaceSmall(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CouponView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          Icon(Icons.local_offer, size: 20.0, color: Colors.grey[700]),
          UIHelper.horizontalSpaceMedium(),
          Text(
            'APPLY COUPON',
            style: Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 16.0),
          ),
          Spacer(),
          Icon(Icons.keyboard_arrow_right, color: Colors.grey),
        ],
      ),
    );
  }
}

class _BillDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 16.0);

    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Bill Details',
            style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 17.0),
          ),
          UIHelper.verticalSpaceSmall(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Item total', style: textStyle),
              Text('Rs 1280.00', style: textStyle),
            ],
          ),
          UIHelper.verticalSpaceMedium(),
          _buildDivider(),
          Container(
            alignment: Alignment.center,
            height: 60.0,
            child: Row(
              children: <Widget>[
                Text('Taxes and Charges', style: textStyle),
                UIHelper.horizontalSpaceSmall(),
                Icon(Icons.info_outline, size: 14.0),
                Spacer(),
                Text('Rs 20.00', style: textStyle),
              ],
            ),
          ),
          _buildDivider(),
          Container(
            alignment: Alignment.center,
            height: 60.0,
            child: Row(
              children: <Widget>[
                Text('To Pay', style: Theme.of(context).textTheme.subtitle2),
                Spacer(),
                Text('Rs 2000.00', style: textStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }

  CustomDividerView _buildDivider() => CustomDividerView(
        dividerHeight: 1.0,
        color: Colors.grey[400],
      );
}

class _DecoratedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Colors.grey[200],
    );
  }
}

class _AddressPaymentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      child: Icon(Icons.restaurant, size: 30.0),
                    ),
                    Positioned(
                      top: 0.0,
                      right: 0.0,
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
                UIHelper.horizontalSpaceMedium(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Approximate Preparation Time for TakeOut',
                        style: Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 16.0),
                      ),
                      Text(
                        'Namma Veedu Vasanta Bhavan',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.grey),
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Text(
                        '43 MINS',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.grey[200],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Rs. 2000.00',
                        style: Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 16.0),
                      ),
                      UIHelper.verticalSpaceExtraSmall(),
                      Text(
                        'VIEW DETAIL BILL',
                        style: Theme.of(context).textTheme.subtitle2.copyWith(color: Colors.blue, fontSize: 13.0),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: ButtonTheme(
                    height: 58.0,
                    padding: const EdgeInsets.all(10.0),
                    child: RaisedButton(
                      color: Colors.green,
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "PROCEED TO PAY",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Payment()),
                        );
                      },
                    ),
                  ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
