import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/subscreens/booking_page.dart';
import '../widgets/custom_widget.dart';

class HotelLakesideDetails extends StatelessWidget {
  const HotelLakesideDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomWidget(
          image: 'asset/images/villa6.jpg',
          name: 'Lake Side',
          description:
              'The Raviz Resort is a luxurious and enchanting destination nestled amidst the natural beauty of its surroundings. Located in a serene and picturesque location, this resort offers a truly immersive and rejuvenating experience for its guests.',
          price: '\$210/night',
          navigation: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => BookingScreen(),
            ));
          }),
    );
  }
}
