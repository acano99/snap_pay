import 'package:flutter/material.dart';

class CommonScreenGrid extends StatelessWidget {
  final Widget fab;
  final double mainAxisExtent;
  final List<Widget> children;

  const CommonScreenGrid({
    super.key,
    required this.fab,
    required this.children,
    required this.mainAxisExtent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: fab,
      body: GridView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 500,
          mainAxisExtent: mainAxisExtent,
        ),
        children: children,
      ),
    );
  }
}
