import 'package:flutter/material.dart';

class FormValidationWithDropdown extends StatefulWidget {
  @override
  _FormValidationWithDropdownState createState() =>
      _FormValidationWithDropdownState();
}

class _FormValidationWithDropdownState
    extends State<FormValidationWithDropdown> {
  final _formKey = GlobalKey<FormState>();
  bool _autovalidate = false;
  String? selectedSalutation;
  String? name;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          autovalidate: _autovalidate,
          child: Container(
            padding: EdgeInsets.only(top: 150),
            child: Column(
              children: <Widget>[
                DropdownButtonFormField<String>(
                  value: selectedSalutation,
                  hint: Text(
                    'Salutation',
                  ),
                  onChanged: (salutation) =>
                      setState(() => selectedSalutation = salutation),
                  validator: (value) => value == null ? 'field required' : null,
                  items: ['MR.', 'MS.']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                ElevatedButton(
                  child: Text('PROCEED'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      //form is valid, proceed further
                      _formKey.currentState!
                          .save(); //save once fields are valid, onSaved method invoked for every form fields

                    } else {
                      setState(() {
                        _autovalidate = true; //enable realtime validation
                      });
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
