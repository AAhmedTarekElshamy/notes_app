import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.ifSelected, required this.color});
  final Color color;
  final bool ifSelected;
  @override
  Widget build(BuildContext context) {
    return ifSelected?
       GestureDetector(
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CircleAvatar(
            radius: 23,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 20,
            ),
          ),
        ),

    ): GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: CircleAvatar(
          backgroundColor: color,
          radius: 20,
        ),
      ),
    );
  }
}
