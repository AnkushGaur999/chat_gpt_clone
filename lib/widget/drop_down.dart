import 'package:chatgpt_clone/constants/constants.dart';
import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String _currentModel = "Model 1";

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
       dropdownColor: scaffoldBackgroundColor,
        items: getModelsItems,
        value: _currentModel,
        onChanged: (value) {
          setState(() {
            _currentModel = value.toString();
          });
        });
  }
}
