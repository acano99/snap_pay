import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:snap_pay/src/config/componnents/common_screen_grid.dart';
import 'package:snap_pay/src/config/componnents/not_implemented_dialog.dart';
import 'package:snap_pay/src/config/componnents/theme_card.dart';

class PaymentMethodHomeScreen extends StatelessWidget {
  const PaymentMethodHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScreenGrid(
      mainAxisExtent: 140,
      fab: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => NotImplementedDialog(),
          );
        },
        child: Icon(Icons.add_card_rounded),
      ),
      children: [
        ...List.generate(
          5,
          (index) => ThemeCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText('Credit Card', style: TextStyle(fontSize: 20)),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.qr_code_2_rounded),
                    ),
                  ],
                ),
                AutoSizeText("Address Payment", style: TextStyle(fontSize: 16)),
                SizedBox(height: 8),
                AutoSizeText(
                  "Payment Amount: 800 Cup",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
