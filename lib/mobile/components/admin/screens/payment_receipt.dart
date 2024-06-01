import 'package:flutter/material.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class PaymentReceiptAdmin extends StatelessWidget {
  const PaymentReceiptAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          'Payment Receipt',
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomText(
              'Payment Details',
              fontSize: 14,
            ),
          ],
        ),
      ),
    );
  }
}
