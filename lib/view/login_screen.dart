import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widgets/bottomnavbar.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final userNameoCntroller = TextEditingController();

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 400,
            child: Image.asset(
              'asset/images/loginpageimage.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                  color: Colors.white,
                ),
                height: 500,
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Column(
                      children: [
                        Text(
                          "Let's Find Your",
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                        Text('Sweet &',
                            style: TextStyle(
                                fontSize: 36, fontWeight: FontWeight.bold)),
                        Text('Dream Place!',
                            style: TextStyle(
                                fontSize: 36, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: 200,
                      height: 70,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 128, 98, 248),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => BottomNavBar(),
                            ));
                          },
                          child: const Text('START')),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
