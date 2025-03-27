import 'package:flutter/material.dart';
import 'package:snap_pay/src/settings/ui/settings_portrait.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return SettingsPortrait();
          } else {
            return Center(child: Text("Not implemented yet"));
          }
        },
      ),
    );
  }
}
