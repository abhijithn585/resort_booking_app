import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/contollers/date_provider.dart';
import 'package:flutter_application_1/contollers/db_functions_provider.dart';
import 'package:flutter_application_1/model/data_model.dart';
import 'package:flutter_application_1/view/booking_list_screen.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class EditCustomerScreen extends StatefulWidget {
  var name;
  var number;
  var fromdate;
  var rate;
  int index;

  // ignore: use_key_in_widget_constructors
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
  // TextEditingController fromDatecontroller = TextEditingController();
  TextEditingController rateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.name);
    numberController = TextEditingController(text: widget.number);
    // fromDatecontroller = TextEditingController(text: widget.fromdate);
    // Provider.of<DateProvider>(context, listen: false).fromDatecontroller =
    // widget.fromdate;
    Future.delayed(Duration.zero, () {
      Provider.of<DateProvider>(context, listen: false)
          .DateSetter(widget.fromdate);
    });
    rateController = TextEditingController(text: widget.rate);
  }

  // DateTime fromDateTime = DateTime.now();
  // DateTime toDateTime = DateTime.now();

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
                                    // _showFromdatepicker(context);

                                    // Provider.of<DateProvider>(context,
                                    //         listen: false)
                                    //     .showDatePickers(context);
                                    // Future.delayed(Duration.zero, () {
                                    Provider.of<DateProvider>(context,
                                            listen: false)
                                        .showDatePickers(context);
                                    // });
                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 300,
                                  child: TextFormField(
                                    // controller: fromDatecontroller,
                                    controller: Provider.of<DateProvider>(
                                            context,
                                            listen: false)
                                        .fromDatecontroller,
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

  // Future<DateTime?> _showFromdatepicker(BuildContext context) {
  //   return showDatePicker(
  //           context: context,
  //           initialDate: fromDateTime,
  //           firstDate: DateTime(2000),
  //           lastDate: DateTime(2040))
  //       .then((value) {
  //     if (value != null) {
  //       setState(() {
  //         fromDateTime = value;
  //         fromDatecontroller.text = _formatDate(value);
  //       });
  //     }
  //   });
  // }

  // String _formatDate(DateTime date) {
  //   return DateFormat('MM/dd/yyyy').format(date);
  // }

  Future<void> updateAll() async {
    final db = Provider.of<Dbprovider>(context, listen: false);
    final newName1 = nameController.text.trim();
    final newNumber1 = numberController.text.trim();
    final newFromDate1 = Provider.of<DateProvider>(context, listen: false)
        .fromDatecontroller
        .text
        .trim();
    final newRate1 = rateController.text.trim();
    if (newName1.isEmpty || newNumber1.isEmpty) {
      return;
    }
    final update = CustomerDataModel(
      name: newName1,
      number: newNumber1,
      fromdate: newFromDate1,
      rate: newRate1,
    );
    db.editCustomer(widget.index, update);
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const BookingListScreen(),
    ));
  }
}
