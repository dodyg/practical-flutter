import "package:flutter/material.dart";

class ListPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: const EdgeInsets.all(20.0),
      children: buildWidgets(),
    );
  }

  List<Widget> buildWidgets(){
    //return [new Text("h")];
    return _contacts.map((x) => new ContacListItem(x)).toList();
  }
}

class Contact {
  final String name;
  final String email;

  const Contact (this.name, this.email);
}

var _contacts = const <Contact>[
  const Contact("Dody Gunawinata", "dodyg@silverkeytech.com"),
  const Contact("Anne Mishkind", "annem@silverkeytech.com"),
  const Contact("Ying Ying Wu", "yingying@wu.com")
];

class ContacListItem extends StatelessWidget{
  final Contact _contact;

  ContacListItem(this._contact);

  @override
  Widget build(BuildContext context)=> new Card(
      child: new Row(
        children: <Widget>[
            new Text(_contact.name)
        ],
      ),
    );
}

