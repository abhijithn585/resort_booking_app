import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/subscreens/hotel_coastal_details.dart';
import 'package:flutter_application_1/screens/subscreens/hotel_lakeside_details.dart';
import 'package:flutter_application_1/screens/subscreens/hotel_paradise_details.dart';
import 'package:flutter_application_1/screens/subscreens/hotel_prestige.dart';
import 'package:flutter_application_1/screens/subscreens/hotel_raviz_details.dart';
import 'package:flutter_application_1/screens/subscreens/hotel_tropical_details.dart';
import 'package:flutter_application_1/screens/subscreens/terms_and_conditions.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final images = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 128, 98, 248),
        ),
        drawer: Drawer(
          child: Container(
              color: const Color.fromARGB(199, 128, 98, 248),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TermsAndConditionsScreen(),
                      ));
                    },
                    child: const ListTile(
                      trailing: Icon(Icons.help, color: Colors.black),
                      leading: Text(
                        "Terms and Conditions",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    onTap: () {
                      SystemNavigator.pop();
                    },
                    trailing: const Icon(Icons.logout, color: Colors.black),
                    leading: const Text(
                      "Log Out",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )
                ],
              )),
        ),
        body: Stack(
          children: [
            SizedBox(
              width: 500,
              child: Image.asset(
                'asset/images/homeimage.png',
                fit: BoxFit.fill,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 228, 227, 227),
                      borderRadius: BorderRadiusDirectional.vertical(
                          top: Radius.circular(30))),
                  height: 500,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Container(
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Villas for You',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const RavizDetails()));
                                    },
                                    child: resortList(
                                        image1: 'asset/images/villa1.jpg',
                                        text1: 'The Raviz',
                                        text2: 'sadsad',
                                        text3: 'dsada'),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const HotelPrestigeDetails()));
                                    },
                                    child: resortList(
                                        image1: 'asset/images/villa2.jpg',
                                        text1: 'The Prestige',
                                        text2: 'sadsad',
                                        text3: 'dsada'),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const HotelParadiseDetails()));
                                    },
                                    child: resortList(
                                        image1: 'asset/images/villa3.jpg',
                                        text1: 'Hotel Paradise',
                                        text2: 'sadsad',
                                        text3: 'dsada'),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const HotelLakesideDetails()));
                                    },
                                    child: resortList(
                                        image1: 'asset/images/villa6.jpg',
                                        text1: 'Hotel Lakeside',
                                        text2: 'sadsad',
                                        text3: 'dsada'),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const HotelCoastalDetails()));
                                    },
                                    child: resortList(
                                        image1: 'asset/images/villa4.jpg',
                                        text1: 'The Coastel',
                                        text2: 'sadsad',
                                        text3: 'dsada'),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const HotelTropicalDetails()));
                                    },
                                    child: resortList(
                                        image1: 'asset/images/villa5.jpg',
                                        text1: 'The Tropical',
                                        text2: 'sadsad',
                                        text3: 'dsada'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Positioned(
                top: 80,
                left: 20,
                child: Text(
                  "Hi! Abhijith",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ))
          ],
        ));
  }

  ClipRRect resortList({
    required String image1,
    required String text1,
    required String text2,
    required String text3,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: 150,
                  child: Image.asset(
                    image1,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 40,
                  child: Container(
                    child: const Column(
                      children: [],
                    ),
                  ),
                )
              ],
            ),
            Text(
              text1,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              text2,
            ),
            Text(
              text3,
            )
          ],
        ),
      ),
    );
  }
}
