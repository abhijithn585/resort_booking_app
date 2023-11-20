import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/data_model.dart';
import 'package:hive/hive.dart';

class Dbprovider extends ChangeNotifier {
  List<CustomerDataModel> customerList = [];
  List<CustomerDataModel> filteredCustomerList = [];

  Future<void> addCustomer(CustomerDataModel value) async {
    final customerDB = await Hive.openBox<CustomerDataModel>('customer_DB');
    customerDB.add(value);
    notifyListeners();
  }

  Future<void> getAllCustomers() async {
    final customerDB = await Hive.openBox<CustomerDataModel>('customer_DB');
    customerList.clear();
    customerList.addAll(customerDB.values);
    notifyListeners();
  }

  Future<void> deleteCustomer(int index) async {
    final customerDB = await Hive.openBox<CustomerDataModel>('customer_DB');
    await customerDB.deleteAt(index);
    notifyListeners();
    await getAllCustomers();
  }

  Future<void> editCustomer(index, CustomerDataModel value) async {
    final customerDB = await Hive.openBox<CustomerDataModel>('customer_DB');
    customerList.clear();
    customerList.addAll(customerDB.values);
    notifyListeners();
    customerDB.putAt(index, value);
    getAllCustomers();
  }

  calculateRevenue(List<CustomerDataModel> customers) {
    double rate = 0;
    for (var customer in customers) {
      rate += double.parse(customer.rate!);
    }
    return rate;
  }

  filterCustomerList(query) {
    filteredCustomerList = customerList
        .where((customer) =>
            customer.name!.toLowerCase().contains(query.toLowerCase()) ||
            customer.number!.contains(query))
        .toList();
    notifyListeners();
  }
}
