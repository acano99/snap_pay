import 'package:flutter/material.dart';

class ThemeCard extends StatelessWidget {
  final Widget child;

  const ThemeCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
        child: child,
      ),
    );
  }
}
