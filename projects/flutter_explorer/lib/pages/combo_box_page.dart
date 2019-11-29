import "package:flutter/material.dart";

class ComboBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _ComboBoxPageState();
}

class _ComboBoxPageState extends State<ComboBoxPage> {
  var _cities = ["Cairo", "Alexandria", "Sahel", "Hurgada"];
  String _currentCity;

  List<DropdownMenuItem<String>> _dropDownMenuItems;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentCity = _dropDownMenuItems.first.value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    var items = new List<DropdownMenuItem<String>>();
    for (var c in _cities) {
      items.add(new DropdownMenuItem(value: c, child: new Text(c)));
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
            color: Colors.white,
            child: new Center(
              child: new DropdownButton(
                value: _currentCity,
                items: _dropDownMenuItems,
                onChanged: changeDropDownItems,
              ),
            )));
  }

  void changeDropDownItems(String selected) {
    print('Selected city is $selected');
    setState(() {
      _currentCity = selected;
    });
  }
}
