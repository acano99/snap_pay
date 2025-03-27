import 'package:flutter/material.dart';
import 'package:snap_pay/src/payment_methods/ui/home/home_portrait.dart';

class PaymentMethodHomeScreen extends StatelessWidget {
  const PaymentMethodHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return HomePortrait();
        } else {
          return Text("Not implemented yet");
        }
      },
    );
  }
}
