import 'package:flutter/material.dart';
import 'package:selectable_day_predicate_example/utils/day_predicate.dart';
import 'package:selectable_day_predicate_example/widget/datepicker_widget.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  final DayPredicate _dayPredicate = DayPredicate();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selectable Day Predicate Example"),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            DatePickerWidget(
              controller: _controller,
              onTap: () => _selectableDayPradicate(context),
            ),
          ],
        ),
      ),
    );
  }

  void _selectableDayPradicate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      selectableDayPredicate: _dayPredicate.predicate,
      firstDate: DateTime(DateTime.now().year),
      lastDate: DateTime(DateTime.now().year + 1),
    );
    if (picked != null) {
      _controller.text = DateFormat('dd-MM-yyyy').format(picked).toString();
    }
  }
}
