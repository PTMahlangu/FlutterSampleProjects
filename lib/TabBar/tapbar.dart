
import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBar createState() => _MyTabBar();
}

class _MyTabBar extends State<MyTabBar> {
  @override
  Widget build(_) => MaterialApp(
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(icon: Icon(Icons.directions_transit)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ],
              ),
              title: Text('Tabs Demo'),
            ),
            body: TabBarView(
              children: [
                Tab1(),
                Tab2(),
                Tab3(),
              ],
            ),
          ),
        ),
      );
}

class Tab1 extends StatefulWidget {
  @override
  createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> with AutomaticKeepAliveClientMixin {
  @override
  bool wantKeepAlive = true;

  @override
  Widget build(context) {
    super.build(context);
    return ListView.builder(
      itemCount: 500,
      itemBuilder: (_, i) => Card(
        child: ListTile(
          title: Text('Entry $i'),
        ),
      ),
    );
  }
}

class Tab2 extends StatelessWidget {
  @override
  Widget build(_) => Icon(Icons.directions_transit);
}

class Tab3 extends StatelessWidget {
  @override
  Widget build(_) => Icon(Icons.directions_bike);
}

