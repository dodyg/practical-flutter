import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormBuilderBasicForm extends StatefulWidget{
  @override
  _FormBuilderBasicFormState createState() => _FormBuilderBasicFormState();
}

class _FormBuilderBasicFormState extends State<FormBuilderBasicForm>{
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Builder Text Input")),
      body:
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              FormBuilder(
                key: _fbKey,
                child:  FormBuilderTextField(
                  attribute: "age",
                  decoration: InputDecoration(labelText: "Age"),
                  validators: [
                    FormBuilderValidators.numeric(),
                    FormBuilderValidators.max(70),
                  ],
                ),
              ),
            Row(
              children:[
                MaterialButton(
                  child: Text("Submit"),
                  onPressed: () {
                    if (_fbKey.currentState.saveAndValidate()) {
                      print(_fbKey.currentState.value);
                    }
                  })
              ]
            )
            ],
          )
        )
    );
  }
}