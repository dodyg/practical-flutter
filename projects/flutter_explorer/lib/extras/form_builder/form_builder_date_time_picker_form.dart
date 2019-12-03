import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class FormBuilderDateTimePickerForm extends StatefulWidget {
  @override
  _FormBuilderDateTimePickerFormState createState() => _FormBuilderDateTimePickerFormState();
}

class _FormBuilderDateTimePickerFormState extends State<FormBuilderDateTimePickerForm> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
        appBar: AppBar( title: Text("Form Builder Date Time Picker")),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              FormBuilderDateTimePicker(
                attribute: "date",
                inputType: InputType.date,
                format: DateFormat("yyyy-MM-dd"),
                decoration: InputDecoration(labelText: "Appointment Time"),
              ),
              Row(
                children: <Widget>[
                  MaterialButton(
                    onPressed: (){
                      if (_fbKey.currentState.saveAndValidate()) {
                        print(_fbKey.currentState.value);
                      }
                    },
                  )
                ],
              )
            ],
          ),
        ),
    );
  }
}