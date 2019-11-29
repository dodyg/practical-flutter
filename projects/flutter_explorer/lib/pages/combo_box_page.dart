import "package:flutter/material.dart";

class ComboBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ComboBoxPageState();
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
    var items = List<DropdownMenuItem<String>>();
    for (var c in _cities) {
      items.add(DropdownMenuItem(value: c, child: Text(c)));
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            child: Center(
              child: DropdownButton(
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
