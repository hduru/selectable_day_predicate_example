import 'package:flutter/material.dart';

class DatePickerWidget extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? onTap;

  const DatePickerWidget({super.key, required this.controller, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      child: TextFormField(
        controller: controller,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.edit_calendar,
            color: Colors.deepPurple,
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurpleAccent),
          ),
          labelText: "Date",
          labelStyle: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          hintText: "Select",
          hintStyle: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 14,
          ),
        ),
        keyboardType: TextInputType.none,
        onTap: onTap,
      ),
    );
  }
}
