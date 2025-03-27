import 'package:flutter/material.dart';

class CommonScreen extends StatelessWidget {
  final List<Widget> children;
  final Widget? fab;

  const CommonScreen({super.key, required this.children, this.fab});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: fab,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        children: children,
      ),
    );
  }
}
