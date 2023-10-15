// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/db/functons/db_functions.dart';
// import 'package:flutter_application_1/model/data_model.dart';
// import 'package:flutter_application_1/screens/widgets/bottomnavbar.dart';
// import 'package:intl/intl.dart';

// class EditCustomerScreen extends StatefulWidget {
//   var name;
//   var number;
//   var fromdate;
//   var todate;
//   var rate;
//   int index;

//   EditCustomerScreen(
//       {required this.index,
//       required this.name,
//       required this.number,
//       required this.fromdate,
//       required this.rate});

//   @override
//   State<EditCustomerScreen> createState() => _EditCustomerScreenState();
// }

// class _EditCustomerScreenState extends State<EditCustomerScreen> {
//   TextEditingController _nameController = TextEditingController();
//   TextEditingController _numberController = TextEditingController();
//   TextEditingController fromDatecontroller = TextEditingController();
//   TextEditingController toDateController = TextEditingController();
//   TextEditingController rateController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _nameController = TextEditingController(text: widget.name);
//     _numberController = TextEditingController(text: widget.number);
//     fromDatecontroller = TextEditingController(text: widget.fromdate);
//     rateController = TextEditingController(text: widget.rate);
//   }

//   DateTime dateTime = DateTime.now();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 0, 76, 139),
//       ),
//       body: Stack(
//         children: [
//           SizedBox(
//             height: 400,
//             width: 500,
//             child: Image.asset(
//               'asset/images/registrationbackground.png',
//               fit: BoxFit.fill,
//             ),
//           ),
//           Form(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Container(
//                   decoration: const BoxDecoration(
//                     borderRadius:
//                         BorderRadius.vertical(top: Radius.circular(40)),
//                     color: Colors.white,
//                   ),
//                   height: 600,
//                   width: 500,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         "Registration",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 25),
//                       ),
//                       Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Row(
//                               children: [
//                                 const Icon(Icons.person),
//                                 const SizedBox(
//                                   width: 20,
//                                 ),
//                                 SizedBox(
//                                   width: 300,
//                                   child: TextFormField(
//                                     controller: _nameController,
//                                     decoration: InputDecoration(
//                                       filled: true,
//                                       fillColor: const Color.fromARGB(
//                                           255, 212, 212, 212),
//                                       border: OutlineInputBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(20.0),
//                                           borderSide: BorderSide.none),
//                                       hintText: 'Name',
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Row(
//                               children: [
//                                 const Icon(Icons.phone),
//                                 const SizedBox(
//                                   width: 20,
//                                 ),
//                                 SizedBox(
//                                   width: 300,
//                                   child: TextFormField(
//                                     controller: _numberController,
//                                     decoration: InputDecoration(
//                                       filled: true,
//                                       fillColor: const Color.fromARGB(
//                                           255, 212, 212, 212),
//                                       border: OutlineInputBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(20.0),
//                                           borderSide: BorderSide.none),
//                                       hintText: 'Number',
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Row(
//                               children: [
//                                 IconButton(
//                                   icon: const Icon(Icons.calendar_month),
//                                   onPressed: () {
//                                     _showdatepicker(context);
//                                   },
//                                 ),
//                                 const SizedBox(
//                                   width: 20,
//                                 ),
//                                 SizedBox(
//                                   width: 300,
//                                   child: TextFormField(
//                                     controller: fromDatecontroller,
//                                     decoration: InputDecoration(
//                                       filled: true,
//                                       fillColor: const Color.fromARGB(
//                                           255, 212, 212, 212),
//                                       border: OutlineInputBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(20.0),
//                                           borderSide: BorderSide.none),
//                                       hintText: 'fromdate',
//                                     ),
//                                     validator: (value) {
//                                       if (value == null || value.isEmpty) {
//                                         return 'Value is Empty';
//                                       } else {
//                                         return null;
//                                       }
//                                     },
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           const Text(
//                             "To",
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           const Padding(
//                             padding: EdgeInsets.all(8.0),
//                             child: Row(
//                               children: [
//                                 Icon(Icons.calendar_month),
//                                 SizedBox(
//                                   width: 20,
//                                 ),
//                                 // SizedBox(width: 300, child: DatePickerWidget()),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 IconButton(
//                                   icon: const Icon(Icons.calendar_month),
//                                   onPressed: () {},
//                                 ),
//                                 const SizedBox(
//                                   width: 10,
//                                 ),
//                                 SizedBox(
//                                   width: 300,
//                                   child: TextFormField(
//                                     controller: rateController,
//                                     decoration: InputDecoration(
//                                       filled: true,
//                                       fillColor: const Color.fromARGB(
//                                           255, 212, 212, 212),
//                                       border: OutlineInputBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(20.0),
//                                           borderSide: BorderSide.none),
//                                       hintText: 'Rate',
//                                     ),
//                                     validator: (value) {
//                                       if (value == null || value.isEmpty) {
//                                         return 'Value is Empty';
//                                       } else {
//                                         return null;
//                                       }
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 100,
//                       ),
//                       SizedBox(
//                         width: 280,
//                         child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(20))),
//                             onPressed: () {
//                               updateAll();
//                             },
//                             child: const Text('Done')),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Future<DateTime?> _showdatepicker(BuildContext context) {
//     return showDatePicker(
//             context: context,
//             initialDate: dateTime,
//             firstDate: DateTime(2000),
//             lastDate: DateTime(2040))
//         .then((value) {
//       if (value != null) {
//         setState(() {
//           dateTime = value;
//           fromDatecontroller.text = _formatDate(value);
//         });
//       }
//     });
//   }

//   String _formatDate(DateTime date) {
//     return DateFormat('MM/dd/yyyy').format(date);
//   }

//   Future<void> updateAll() async {
//     final name1 = _nameController.text.trim();
//     final number1 = _numberController.text.trim();
//     final newFromDate = fromDatecontroller.text.trim();
//     final newToDate = toDateController.text.trim();
//     final rate = rateController.text.trim();
//     if (name1.isEmpty || number1.isEmpty) {
//       return;
//     }
//     final update = CustomerDataModel(
//         rate: rate,
//         name: name1,
//         number: number1,
//         fromdate: newFromDate,
//         todate: newToDate);
//     editCustomer(widget.index, update);
//     Navigator.of(context).push(MaterialPageRoute(
//       builder: (context) => const BottomNavBar(),
//     ));
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/db/functons/db_functions.dart';
import 'package:flutter_application_1/model/data_model.dart';
import 'package:flutter_application_1/screens/widgets/bottomnavbar.dart';
import 'package:intl/intl.dart';

class EditCustomerScreen extends StatefulWidget {
  var name;
  var number;
  var fromdate;
  var todate;
  var rate;
  int index;

  EditCustomerScreen(
      {required this.index,
      required this.name,
      required this.number,
      required this.fromdate,
      required this.rate});

  @override
  State<EditCustomerScreen> createState() => _EditCustomerScreenState();
}

class _EditCustomerScreenState extends State<EditCustomerScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController fromDatecontroller = TextEditingController();
  TextEditingController toDateController = TextEditingController();
  TextEditingController rateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.name);
    numberController = TextEditingController(text: widget.number);
    fromDatecontroller = TextEditingController(text: widget.fromdate);
    toDateController = TextEditingController(text: widget.fromdate);
    rateController = TextEditingController(text: widget.rate);
  }

  DateTime fromDateTime = DateTime.now();
  DateTime toDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 128, 98, 248),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: 400,
            width: 500,
            child: Image.asset(
              'asset/images/registrationbackground.png',
              fit: BoxFit.fill,
            ),
          ),
          Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40)),
                    color: Colors.white,
                  ),
                  height: 600,
                  width: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Updation",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.person),
                                const SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 300,
                                  child: TextFormField(
                                    controller: nameController,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: const Color.fromARGB(
                                          255, 212, 212, 212),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: BorderSide.none),
                                      hintText: 'Name',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.phone),
                                const SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 300,
                                  child: TextFormField(
                                    maxLength: 10,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                          RegExp(r'[0-9]'))
                                    ],
                                    controller: numberController,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: const Color.fromARGB(
                                          255, 212, 212, 212),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: BorderSide.none),
                                      hintText: 'Number',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.calendar_month),
                                  onPressed: () {
                                    _showFromdatepicker(context);
                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 300,
                                  child: TextFormField(
                                    controller: fromDatecontroller,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: const Color.fromARGB(
                                          255, 212, 212, 212),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: BorderSide.none),
                                      hintText: 'fromdate',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                            child: Text(
                              "To",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.calendar_month),
                                  onPressed: () {
                                    _showTodatepicker(context);
                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 300,
                                  child: TextFormField(
                                    controller: toDateController,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: const Color.fromARGB(
                                          255, 212, 212, 212),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: BorderSide.none),
                                      hintText: 'todate',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.currency_rupee),
                                  onPressed: () {},
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 300,
                                  child: TextFormField(
                                    controller: rateController,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: const Color.fromARGB(
                                          255, 212, 212, 212),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: BorderSide.none),
                                      hintText: 'Rate',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: SizedBox(
                          width: 280,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 128, 98, 248),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              onPressed: () {
                                updateAll();
                              },
                              child: const Text('Done')),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<DateTime?> _showTodatepicker(BuildContext context) {
    return showDatePicker(
            context: context,
            initialDate: toDateTime,
            firstDate: DateTime(2000),
            lastDate: DateTime(2040))
        .then((value) {
      if (value != null) {
        setState(() {
          toDateTime = value;
          toDateController.text = _formatDate(value);
        });
      }
    });
  }

  Future<DateTime?> _showFromdatepicker(BuildContext context) {
    return showDatePicker(
            context: context,
            initialDate: fromDateTime,
            firstDate: DateTime(2000),
            lastDate: DateTime(2040))
        .then((value) {
      if (value != null) {
        setState(() {
          fromDateTime = value;
          fromDatecontroller.text = _formatDate(value);
        });
      }
    });
  }

  String _formatDate(DateTime date) {
    return DateFormat('MM/dd/yyyy').format(date);
  }

  Future<void> updateAll() async {
    final newName1 = nameController.text.trim();
    final newNumber1 = numberController.text.trim();
    final newFromDate1 = fromDatecontroller.text.trim();
    final newToDate1 = toDateController.text.trim();
    final newRate1 = rateController.text.trim();
    if (newName1.isEmpty || newNumber1.isEmpty) {
      return;
    }
    final update = CustomerDataModel(
      name: newName1,
      number: newNumber1,
      fromdate: newFromDate1,
      todate: newToDate1,
      rate: newRate1,
    );
    editCustomer(widget.index, update);
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const BottomNavBar(),
    ));
  }
}
