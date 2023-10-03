import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/functons/db_functions.dart';
import 'package:flutter_application_1/model/data_model.dart';
import 'package:flutter_application_1/screens/widgets/bottomnavbar.dart';

class EditCustomerScreen extends StatefulWidget {
  var name;
  var number;
  var fromdate;
  var todate;
  int index;

  EditCustomerScreen(
      {required this.index,
      required this.name,
      required this.number,
      required this.fromdate,
      required this.todate});

  @override
  State<EditCustomerScreen> createState() => _EditCustomerScreenState();
}

class _EditCustomerScreenState extends State<EditCustomerScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  TextEditingController _fromDateController = TextEditingController();
  TextEditingController _toDateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.name);
    _numberController = TextEditingController(text: widget.number);
    _fromDateController = TextEditingController(text: widget.fromdate);
    _toDateController = TextEditingController(text: widget.todate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 76, 139),
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
                        "Registration",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Icon(Icons.person),
                                const SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 300,
                                  child: TextFormField(
                                    controller: _nameController,
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
                              children: [
                                const Icon(Icons.phone),
                                const SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 300,
                                  child: TextFormField(
                                    controller: _numberController,
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
                              children: [
                                const Icon(Icons.calendar_month),
                                const SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 300,
                                  child: TextFormField(
                                    controller: _fromDateController,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: const Color.fromARGB(
                                          255, 212, 212, 212),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: BorderSide.none),
                                      hintText: 'DD/MM/YYYY',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "To",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Icon(Icons.calendar_month),
                                const SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 300,
                                  child: TextFormField(
                                    controller: _toDateController,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: const Color.fromARGB(
                                          255, 212, 212, 212),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: BorderSide.none),
                                      hintText: 'DD/MM/YYYY',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      SizedBox(
                        width: 280,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {
                              updateAll();
                            },
                            child: const Text('Done')),
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

  Future<void> updateAll() async {
    final name1 = _nameController.text.trim();
    final number1 = _numberController.text.trim();
    final fromDate1 = _fromDateController.text.trim();
    final toDate1 = _toDateController.text.trim();
    if (name1.isEmpty ||
        number1.isEmpty ||
        fromDate1.isEmpty ||
        toDate1.isEmpty) {
      return;
    }
    final update = CustomerDataModel(
        name: name1, number: number1, fromdate: fromDate1, toDate: toDate1);
    editCustomer(widget.index, update);
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const BottomNavBar(),
    ));
  }
}
