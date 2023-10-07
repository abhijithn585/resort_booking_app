// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class DatePickerWidget extends StatefulWidget {
//   @override
//   _DatePickerWidget createState() => _DatePickerWidget();
// }

// class _DatePickerWidget extends State<DatePickerWidget> {
//   DateTime dateTime = DateTime.now();

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoButton(
//       color: const Color.fromARGB(255, 212, 212, 212),
//       onPressed: () {
//         _showDatePicker(context);
//       },
//       child: Text(
//         ' ${dateTime.day} - ${dateTime.month} - ${dateTime.year}',
//         style: TextStyle(color: Colors.black),
//       ),
//     );
//   }

//   void _showDatePicker(BuildContext context) {
//     showCupertinoModalPopup(
//       context: context,
//       builder: (BuildContext context) => SizedBox(
//         height: 250,
//         child: CupertinoDatePicker(
//           backgroundColor: Colors.white,
//           initialDateTime: dateTime,
//           onDateTimeChanged: (DateTime newTime) {
//             setState(() => dateTime = newTime);
//           },
//           use24hFormat: true,
//           mode: CupertinoDatePickerMode.date,
//         ),
//       ),
//     );
//   }
// }
