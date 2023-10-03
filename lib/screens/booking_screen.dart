import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/functons/db_functions.dart';
import 'package:flutter_application_1/model/data_model.dart';
import 'package:flutter_application_1/screens/subscreens/edit_customer.dart';

class BookingListScreen extends StatelessWidget {
  const BookingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    getAllCustomers();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 128, 98, 248),
        ),
        body: ValueListenableBuilder(
          valueListenable: customerListNotifier,
          builder: (BuildContext ctx, List<CustomerDataModel> customerList,
              Widget? child) {
            return ListView.separated(
                itemBuilder: (ctx, index) {
                  final data = customerList[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 3,
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      title: Align(
                          alignment: Alignment.center, child: Text(data.name)),
                      subtitle: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Text(data.number),
                              Text(data.fromdate),
                              const Text('to'),
                              Text(data.toDate)
                            ],
                          )),
                      leading: Icon(Icons.person),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                deleteCustomer(index);
                              },
                              icon: const Icon(Icons.delete)),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EditCustomerScreen(
                                    index: index,
                                    name: data.name,
                                    number: data.number,
                                    fromdate: data.fromdate,
                                    todate: data.toDate,
                                  ),
                                ));
                              },
                              icon: const Icon(Icons.edit))
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: ((context, index) {
                  return const Divider(
                    color: Colors.transparent,
                  );
                }),
                itemCount: customerList.length);
          },
        ));
  }
}
