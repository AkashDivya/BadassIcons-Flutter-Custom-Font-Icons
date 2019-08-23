import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import './homepage.dart';
import './startpage.dart';

void main() {
  //Following codes Customizes the StatusBar & NavigationBar.
  //Services Package were imported for these.
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );

  //Bottom NavBar acts as overlay.
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //This widget holds active widget which changes over time.
  Widget activeWidget;

  //Initial value of activeWidget.
  @override
  void initState() {
    super.initState();
    activeWidget = StartPage();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //This Container contains image whhich acts as BG in the App.
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/crossfitter.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5), BlendMode.multiply),
        ),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BADASS DEVELOPER CLUB',
        theme: ThemeData(
          //Default Theme for the App.
          brightness: Brightness.dark,
          primaryColor: Colors.white,
          accentColor: Colors.white54,
          fontFamily: 'FjallaOne',
        ),
        home: GestureDetector(
          //both onTap & onDoubleTap are assigned to avoid any error
          //in the app as to overlay the android's bottom navbar over the UI.
          //It's a work-around until I find a way.
          onTap: (activeWidget != HomePage())
              ? (() {
                  setState(() {
                    activeWidget = HomePage();
                  });
                })
              : null,
          onDoubleTap: (activeWidget != HomePage())
              ? (() {
                  setState(() {
                    activeWidget = HomePage();
                  });
                })
              : null,
          child: activeWidget,
        ),
      ),
    );
  }
}
