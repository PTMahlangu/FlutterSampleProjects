import 'package:flutter/material.dart';


class Tabs extends StatefulWidget {
  @override
  createState() => _Tab3State();
}

class _Tab3State extends State<Tabs> {

  List<Item> items = generateItems(6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
          title: Text("ExpansionPanel List"),
        ),
          body: SingleChildScrollView(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList.radio(
      children: items.map<ExpansionPanelRadio>((Item item) {
        return ExpansionPanelRadio(
            value: item.id,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(item.headerValue,
                style: TextStyle(fontWeight: FontWeight.bold)),
              );
            },
            body: ListTile(
              title: Text(item.expandedValue),          
            ));
      }).toList(),
    );
  }
}

class Item {
  Item({this.id, this.expandedValue, this.headerValue, this.isExpanded});
  int id;
  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      id: index,
      headerValue: "Item $index",
      expandedValue: "Sub Item $index",
    );
  });
}


