import "package:flutter/material.dart";

class ListPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20.0),
      children: buildWidgets(),
    );
  }

  List<Widget> buildWidgets(){
    return _contacts.map((x) => ContactListItem(x)).toList();
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

class ContactListItem extends StatelessWidget{
  final Contact _contact;

  ContactListItem(this._contact);

  Widget text(String txt) => Container(
    child : new Text(txt, textAlign: TextAlign.right,),
    padding: new EdgeInsets.all(10.0)
  );

  @override
  Widget build(BuildContext context)=> Card(
      child: new Column(
        children: <Widget>[
          text(_contact.name),
          text(_contact.email)
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
//color: new Color.fromARGB(0, 124,252,0),
    );
}

