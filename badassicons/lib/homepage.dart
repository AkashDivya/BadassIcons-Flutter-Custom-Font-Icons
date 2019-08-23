import 'package:flutter/material.dart';

import './custom_appBar.dart';
import './logic/launchURL.dart';
import './logic/showIconSnack.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        //Custom AppBar
        preferredSize: Size.fromHeight(80),
        child: CustomAppBar(),
      ),
      body: MainBody(),
    );
  }
}

//This seperate class is needed as to show snackbar,
//Scaffold must be inherited from a parent class.
class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double idealIconSize = (MediaQuery.of(context).size.width - 130) / 5;
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: <Widget>[
          Expanded(
            child: SizedBox(),
          ),
          Stack(
            //It Stacks all the Icons over X Shape.
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                //This is the X shape.
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.width - 100,
                width: MediaQuery.of(context).size.width - 100,
                child: Icon(
                  IconData(0xe805, fontFamily: 'AppIcons'),
                  size: MediaQuery.of(context).size.width - 180,
                ),
              ),
              Column(
                children: <Widget>[
                  IconButton(
                    //This is Dumbell Icon.
                    onPressed: () {
                      infoSnack(context: context, iconName: 'Dumbell');
                    },
                    icon: Icon(IconData(0xe801, fontFamily: 'AppIcons')),
                    iconSize: idealIconSize,
                  ),
                  SizedBox(height: idealIconSize),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        //This is Football Icon.
                        onPressed: () {
                          infoSnack(context: context, iconName: 'Football');
                        },
                        icon: Icon(IconData(0xe802, fontFamily: 'AppIcons')),
                        iconSize: idealIconSize,
                      ),
                      SizedBox(width: idealIconSize * 3),
                      IconButton(
                        //This is Axe Icon.
                        onPressed: () {
                          infoSnack(context: context, iconName: 'Axe');
                        },
                        icon: Icon(IconData(0xe800, fontFamily: 'AppIcons')),
                        iconSize: idealIconSize,
                      ),
                    ],
                  ),
                  SizedBox(height: idealIconSize),
                  IconButton(
                    //This is Punching Bag Icon.
                    onPressed: () {
                      infoSnack(context: context, iconName: 'Punching Bag');
                    },
                    icon: Icon(IconData(0xe803, fontFamily: 'AppIcons')),
                    iconSize: idealIconSize,
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: SizedBox(),
          ),

          //The Button.
          RawMaterialButton(
            onPressed: () {
              launchURL(
                  url:
                      'https://github.com/AkashDivya/BadassIcons-Flutter-Custom-Font-Icons');
            },
            child: Text(
              'GET THIS APP\'S SOURCE CODE',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
            fillColor: Colors.white,
            constraints: BoxConstraints(
                minHeight: 45,
                minWidth: MediaQuery.of(context).size.width - 60),
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
