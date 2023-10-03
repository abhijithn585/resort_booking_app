import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Container(
            child: const Text(
                """These Terms and Conditions  govern your use of the Hotel Register mobile application , provided by Hotel Register, Inc. . By using the App, you agree to comply with and be bound by these Terms. If you do not agree to these Terms, please do not use the App.
                
                1. App Usage and Registration
                
                1.1 You must be at least 18 years old to use the App.
                
                1.2 You agree to provide accurate and complete registration information. You are responsible for maintaining the confidentiality of your account and password and for restricting access to your device. You accept responsibility for all activities that occur under your account or password.
                
                2. Booking and Reservations
                
                2.1 The App allows you to search for hotels, view available rooms, and make reservations.
                
                2.2 We do not guarantee the availability of any room or the accuracy of the hotel information provided on the App. Hotel availability and pricing may change without notice.
                
                2.3 By making a reservation through the App, you agree to abide by the hotel's policies and any additional terms and conditions imposed by the hotel.
                
                3. Payment
                
                3.1 You will be required to provide payment information to complete a reservation.
                
                3.2 The App may facilitate payments to hotels on your behalf. Payment processing is handled by third-party payment providers, and we are not responsible for any issues related to payments, including but not limited to unauthorized charges or billing disputes.
                
                4. Cancellation and Refunds
                
                4.1 Cancellation policies vary by hotel. Please review the cancellation policy provided by the hotel before making a reservation.
                
                4.2 Refund policies are determined by the hotel and may vary. We are not responsible for hotel refund policies.
                
                5. Privacy
                
                5.1 We collect and process personal information as described in our Privacy Policy. By using the App, you consent to the collection and use of your information in accordance with our Privacy Policy.
                
                6. User Conduct
                
                6.1 You agree not to use the App for any unlawful or prohibited purpose. You may not use the App in any way that could damage, disable, overburden, or impair the App or interfere with any other party's use and enjoyment of the App.
                
                7. Termination
                
                7.1 We reserve the right to terminate or suspend your access to the App at our discretion and without prior notice for any violation of these Terms or for any other reason.
                
                8. Disclaimer of Warranties
                
                8.1 The App is provided on an "as-is" basis. We make no warranties or representations about the accuracy, completeness, or reliability of the App's content or the content of any websites linked to the App.
                
                9. Limitation of Liability
                
                9.1 In no event shall Hotel Register, Inc. be liable for any direct, indirect, incidental, special, consequential, or punitive damages arising out of or in connection with your use of the App.
                
                10. Changes to Terms
                
                10.1 We reserve the right to modify these Terms at any time. Any changes will be effective immediately upon posting on the App. It is your responsibility to review these Terms regularly to stay informed of any updates.
                
                11. Contact Us
                
                11.1 If you have any questions or concerns about these Terms, please contact us at [contact@email.com].
                
                By using the Hotel Register App, you acknowledge that you have read, understood, and agreed to these Terms and Conditions.
                
                Last updated: 22/09/2023 """),
          ),
        ),
      ),
    );
  }
}
