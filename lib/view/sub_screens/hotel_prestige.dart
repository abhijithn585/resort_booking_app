import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/sub_screens/booking_page.dart';

import '../widgets/custom_widget.dart';

class HotelPrestigeDetails extends StatelessWidget {
  const HotelPrestigeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomWidget(
          image: 'asset/images/villa2.jpg',
          name: 'Prestige',
          description:
              'The Raviz Resort is a luxurious and enchanting destination nestled amidst the natural beauty of its surroundings. Located in a serene and picturesque location, this resort offers a truly immersive and rejuvenating experience for its guests.',
          price: '\$130/night',
          navigation: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => BookingScreen(),
            ));
          }),
    );
  }
}
