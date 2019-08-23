import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height / 2 - 10),
          Row(
            children: <Widget>[
              Expanded(child: SizedBox()),
              Text('Tap twice to START'),
              Expanded(child: SizedBox()),
            ],
          )
        ],
      ),
    );
  }
}
