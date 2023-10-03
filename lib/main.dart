import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/data_model.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(CustomerDataModelAdapter().typeId)) {
    Hive.registerAdapter(CustomerDataModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'restoapp',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
