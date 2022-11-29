import 'package:binary_way/components/text_field_container.dart';
import 'package:flutter/material.dart';

class Date_Picker extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const Date_Picker({Key? key, required this.onChanged}) : super(key: key);

  @override
  State<Date_Picker> createState() => _Date_PickerState();
}

class _Date_PickerState extends State<Date_Picker> {
  DateTime date = DateTime(24,12,2000);
  @override
  Widget build(BuildContext context) {
    return TextFiledContainer(
      child: TextField(
        onChanged: widget.onChanged,
        decoration:  InputDecoration(
          suffixIcon: IconButton(
              icon: Icon(Icons.calendar_month_rounded,),
            onPressed: () async {
                DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100)
                );

                if (newDate == null) return;

                setState(()=> date= newDate);
            },
          ),
          hintText: '${date.day}/${date.month}/${date.year}',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
