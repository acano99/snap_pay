import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:snap_pay/src/config/componnents/common_screen.dart';
import 'package:snap_pay/src/config/componnents/not_implemented_dialog.dart';

class HomePortrait extends StatelessWidget {
  const HomePortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScreen(
      fab: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => NotImplementedDialog(),
          );
        },
        child: Icon(Icons.add_card_rounded),
      ),
      children: [],
    );
  }
}
