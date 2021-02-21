import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sample_projects/ExpansionPanelList/expansionPanelList.dart';
import 'package:flutter_sample_projects/TabBar/tapbar.dart';
import 'package:flutter_sample_projects/httpRequest/httpRequest.dart';
import 'package:flutter_sample_projects/snackBar/snackBar.dart';

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  onButtonTap(Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Sample Projects"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            MyMenuButton(
              title: "Http Fetch JSON Data",
              actionTap: () {
                onButtonTap(
                  MainFetchData(),
                );
              },
            ),
            MyMenuButton(
              title: "SnackBar",
              actionTap: () {
                onButtonTap(
                  MySnackBar(),
                );
              },
            ),
            MyMenuButton(
              title: "TabBar",
              actionTap: () {
                onButtonTap(
                  MyTabBar(),
                );
              },
            ),
            MyMenuButton(
              title: "Expansion List",
              actionTap: () {
                onButtonTap(
                  Tabs(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


class MyMenuButton extends StatelessWidget {
  final String title;
  final VoidCallback actionTap;

  MyMenuButton({this.title, this.actionTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: MaterialButton(
        height: 50.0,
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        child: new Text(title),
        onPressed: actionTap,
      ),
    );
  }
}
