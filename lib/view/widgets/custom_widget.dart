import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/home_screen.dart';

// ignore: must_be_immutable
class CustomWidget extends StatelessWidget {
  CustomWidget(
      {super.key,
      required this.image,
      required this.description,
      required this.price,
      required this.name,
      required this.navigation});

  String image;
  String description;
  String price;
  String name;
  VoidCallback navigation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 90, 30, 0),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)),
                          height: 350,
                          width: 355,
                          child: Image.asset(
                            image,
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(117, 255, 255, 255)),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                          },
                          icon: const Icon(Icons.arrow_back_ios)),
                    ),
                  ),
                  Positioned(
                    top: 240,
                    left: 60,
                    child: Container(
                      width: 200,
                      height: 80,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(107, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(name),
                              const SizedBox(
                                width: 50,
                              ),
                              Text(price)
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.location_on_sharp),
                              Text('Kozhikode')
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Facilities",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                children: [
                  FacilityList(icon1: Icons.bed, text1: "2 Bed"),
                  const SizedBox(
                    width: 10,
                  ),
                  FacilityList(
                      icon1: Icons.dining_rounded, text1: 'Break Fast'),
                  const SizedBox(
                    width: 10,
                  ),
                  FacilityList(icon1: Icons.severe_cold_outlined, text1: 'A/C'),
                  const SizedBox(
                    width: 10,
                  ),
                  FacilityList(icon1: Icons.pool, text1: 'Pool')
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 30, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Property Description",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Text(description),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: const Offset(10, 3),
                  ),
                ],
              ),
              width: 400,
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text('Price estimate',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                        child: Text(price,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 128, 98, 248),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: navigation,
                            child: const Text('Reserve')),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Column FacilityList({required IconData icon1, required String text1}) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 215, 215, 215),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(icon1,
              size: 30, color: const Color.fromARGB(255, 128, 98, 248)),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text1,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
