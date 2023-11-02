import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contollers/db_functions.dart';
import 'package:flutter_application_1/model/data_model.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class revenueScreen extends StatefulWidget {
  const revenueScreen({super.key});

  @override
  State<revenueScreen> createState() => _revenueScreenState();
}

// ignore: camel_case_types
class _revenueScreenState extends State<revenueScreen> {
  @override
  Widget build(BuildContext context) {
    final db = Provider.of<Dbprovider>(context, listen: false);
    List<CustomerDataModel> customer = db.customerList;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 128, 98, 248),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              'Revenue',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 300,
              child: PieChart(PieChartData(
                  sections: List.generate(customer.length, (index) {
                    double rate = double.parse(customer[index].rate!);
                    double totalrevenue = db.calculateRevenue(customer);
                    double percentage = (rate / totalrevenue) * 100;
                    return PieChartSectionData(
                        value: percentage,
                        color: getRandomColor(),
                        title: '''${rate.toStringAsFixed(2)}
                  (${percentage.toStringAsFixed(2)}%)''',
                        radius: 80,
                        titleStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white));
                  }),
                  sectionsSpace: 5,
                  centerSpaceRadius: 90,
                  startDegreeOffset: 0)),
            )
          ],
        ),
      ),
    );
  }
}

Color getRandomColor() {
  return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1);
}
