import 'package:flutter/material.dart';
import 'package:flutter_application_1/contollers/db_functions_provider.dart';
import 'package:flutter_application_1/contollers/page_provider.dart';
import 'package:flutter_application_1/model/data_model.dart';
import 'package:flutter_application_1/view/booking_list_screen.dart';
import 'package:flutter_application_1/view/login_screen.dart';
import 'package:flutter_application_1/view/widgets/bottomnavbar.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';

import 'contollers/date_provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Dbprovider()),
        ChangeNotifierProvider(
          create: (context) => Pageprovider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DateProvider(),
        )
      ],
      child: MaterialApp(
          title: 'restoapp',
          home: LoginScreen(),
          debugShowCheckedModeBanner: false,
          routes: {
            '/bottomNavBar': (context) => BottomNavBar(),
            '/bookingListScreen': (context) => const BookingListScreen(),
          }),
    );
  }
}
