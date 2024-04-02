import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Calender1(),debugShowCheckedModeBanner: false,));
}

class Calender1 extends StatefulWidget {
  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender1> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked =
    await showTimePicker(context: context, initialTime: selectedTime);
    if (picked != null && picked != selectedTime)
      setState(() {
        selectedTime = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date and Time'),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text("Select Date"),
            subtitle: Text("${selectedDate.toLocal()}".split(' ')[0]),
            onTap: () => _selectDate(context),
          ),
          ListTile(
            title: Text("Select Time"),
            subtitle: Text("${selectedTime.format(context)}"),
            onTap: () => _selectTime(context),
          ),
          ElevatedButton(onPressed: (){}, child: Text('Ok'))
          // Add payment options UI and logic here
        ],
      ),
    );
  }
}
