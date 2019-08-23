import 'package:flutter/material.dart';

//Shows Snackbar with name of Icons.
void infoSnack({@required context, @required iconName}) {
  final snack = SnackBar(
    duration: Duration(seconds: 2),
    backgroundColor: Colors.black,
    content: Text(
      'You have tapped the $iconName Icon.',
      style: TextStyle(
        fontFamily: 'FjallaOne',
        fontSize: 12,
      ),
    ),
  );
  Scaffold.of(context).showSnackBar(snack);
}
