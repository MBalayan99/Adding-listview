import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProductCreatePageState();
  }
}



class ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue;
  String descriptionValue;
  double priceValue;
  String data;
  bool outdated;
  final _formKey = GlobalKey<FormState>();
  final dateFormat = DateFormat("EEEE, MMMM d, yyyy ");
  DateTime date;


  String dropdown;

  DropdownButton _dropdown() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
          value: "New",
          child: Text("New")
      ),
      DropdownMenuItem(
          value: "Auth",
          child: Text("Auth")
      ),
    ],
    onChanged: (value) {
      setState(() {
        dropdown = value;
      });
    },
    value: dropdown,
  );

  Widget _buildPicker() {
    if (dropdown == "Auth") {
      return DateTimePickerFormField(
        dateOnly: true,
        format: dateFormat,
        decoration: InputDecoration(labelText: 'Date'),
      );
    }
    return Container();
  }




  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      //margin: EdgeInsets.all(15.0),
      child: ListView(children: <Widget>[
        TextFormField(
            decoration: new InputDecoration(labelText: " titleValue"),
            onSaved: (String value) {
              setState(() {
                titleValue = value;
              });
            },
            validator: (value) {
              if (value.isEmpty) {
                return 'Enter some text';
              }
              return null;
            }),
        TextFormField(
            decoration: new InputDecoration(labelText: "descriptionValue"),
            onSaved: (String value) {
              setState(() {
                descriptionValue = value;
              });
            },
            validator: (value) {
              if (value.isEmpty) {
                return 'Enter some text';
              }
              return null;
            }),
        TextFormField(
            decoration: new InputDecoration(labelText: "price"),
            onSaved: (String value) {
              setState(() {
                priceValue = double.parse(value);
              });
            },
            validator: (value) {
              if (value.isEmpty) {
                return 'Enter some text';
              }
              return null;
            }),
        _dropdown(),
        _buildPicker(),


        //)
      ]),
    );
  }
}

