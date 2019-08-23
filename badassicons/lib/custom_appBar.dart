import 'package:flutter/material.dart';

import './logic/showIconSnack.dart';

//Custom AppBar
class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.only(left: 30, right: 20, bottom: 5),
      color: Colors.transparent,
      height: 80,
      child: Row(
        children: <Widget>[
          Text(
            //Title on the AppBar
            'BADASS DEVELOPER CLUB',
            style: TextStyle(fontSize: 16),
          ),
          Expanded(child: SizedBox()),
          IconButton(
            //Search Icon
            onPressed: () {
              infoSnack(context: context, iconName: 'Search Icon');
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
    );
  }
}
