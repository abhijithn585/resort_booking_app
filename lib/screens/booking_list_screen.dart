import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/functons/db_functions.dart';
import 'package:flutter_application_1/model/data_model.dart';
import 'package:flutter_application_1/screens/subscreens/edit_customer.dart';
import 'dart:async';
import 'package:flutter_application_1/screens/subscreens/revenue.dart';
import 'package:flutter_application_1/screens/widgets/bottomnavbar.dart';

class BookingListScreen extends StatefulWidget {
  const BookingListScreen({Key? key}) : super(key: key);
  @override
  State<BookingListScreen> createState() => _BookingListScreenState();
}

class _BookingListScreenState extends State<BookingListScreen> {
  // ignore: non_constant_identifier_names
  TextEditingController SearchController = TextEditingController();
  List<CustomerDataModel> filteredCustomerList = [];
  Map<int, Color> tileColors = {};
  Map<int, bool> completionStatus = {};

  @override
  void initState() {
    super.initState();
    getAllCustomers();
  }

  void filterCustomers(String query) {
    // List<CustomerDataModel> result = [];
    setState(() {
      filteredCustomerList = customerListNotifier.value
          .where((customer) =>
              customer.name!.toLowerCase().contains(query.toLowerCase()) ||
              customer.number!.contains(query))
          .toList();
    });
  }

  Future<void> _showDeleteConfirmationDialog(int index) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Confirmation'),
          content: const Text('Are you sure you want to delete this customer?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                deleteCustomer(index);
                Navigator.of(context).pop();
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  void changeTileColorToRed(int index) async {
    await Future.delayed(const Duration(seconds: 5));
    tileColors[index] = Colors.red;
    completionStatus[index] = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    getAllCustomers();
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const BottomNavBar(),
                ));
              },
              icon: const Icon(Icons.arrow_back_outlined)),
          backgroundColor: const Color.fromARGB(255, 128, 98, 248),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const revenueScreen(),
                  ));
                },
                icon: const Icon(Icons.bar_chart))
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: SearchController,
                onChanged: (value) {
                  filterCustomers(value);
                },
                decoration: const InputDecoration(
                  labelText: 'Search',
                  hintText: 'Search for a customer',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: customerListNotifier,
                builder: (BuildContext ctx,
                    List<CustomerDataModel> customerList, Widget? child) {
                  return ListView.separated(
                      itemBuilder: (ctx, index) {
                        final data = filteredCustomerList.isNotEmpty
                            ? filteredCustomerList[index]
                            : customerList[index];
                        return ListTile(
                          tileColor: tileColors[index] ??
                              const Color.fromARGB(255, 128, 98, 248),
                          textColor: const Color.fromARGB(255, 255, 255, 255),
                          contentPadding: const EdgeInsets.all(16),
                          title: Align(
                              alignment: Alignment.center,
                              child: Text(
                                data.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )),
                          subtitle: Align(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Text(
                                    data.number,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    data.fromdate,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                                child: IconButton(
                                    onPressed: () {
                                      _showDeleteConfirmationDialog(index);
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    )),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) =>
                                            EditCustomerScreen(
                                          rate: data.rate,
                                          index: index,
                                          name: data.name,
                                          number: data.number,
                                          fromdate: data.fromdate,
                                        ),
                                      ));
                                    },
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                    )),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.green)),
                                onPressed: () {
                                  if (completionStatus[index] == true) {
                                  } else {
                                    changeTileColorToRed(index);
                                  }
                                },
                                child: Text(
                                  completionStatus[index] == true
                                      ? "Completed"
                                      : "Start",
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: ((context, index) {
                        return const Divider(
                          color: Colors.transparent,
                        );
                      }),
                      itemCount: filteredCustomerList.isNotEmpty
                          ? filteredCustomerList.length
                          : customerList.length);
                },
              ),
            ),
          ],
        ));
  }
}
