import 'package:flutter/widgets.dart';

class Setting {
  final String name;
  final String description;
  final IconData icon;
  final VoidCallback onTap;

  Setting({
    required this.name,
    required this.description,
    required this.icon,
    required this.onTap,
  });
}
