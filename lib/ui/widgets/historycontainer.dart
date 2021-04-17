import 'package:swiggy_ui/utils/app_colors.dart';

import '../../global.dart';
import 'package:flutter/material.dart';

class HistoryContainer extends StatelessWidget {
  final int id;

  const HistoryContainer({Key key, @required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    IconData _icon;
    if (historyContainerList[id]['actionType'] == actions.add)
      _icon = Icons.add;
    else if (historyContainerList[id]['actionType'] == actions.receive)
      _icon = Icons.history;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      width: MediaQuery.of(context).size.width / 2.3,
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(color: Colors.grey[200], blurRadius: 14),
        ],
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Spacer(),
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: IconButton(
                  icon: Icon(
                    _icon,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              Spacer(),
            ],
          ),
          Spacer(),
          Text(
            "${historyContainerList[id]['title']}",
            style: Theme.of(context)
                .textTheme
                .title
                .apply(color: darkOrange, fontWeightDelta: 2),
          ),
          Text(
            "${historyContainerList[id]['subtitle']}",
            style: Theme.of(context).textTheme.subhead,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
