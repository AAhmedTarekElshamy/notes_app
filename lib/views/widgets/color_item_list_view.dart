import 'package:flutter/material.dart';

import 'color-item.dart';

class ColorItemListView extends StatelessWidget {
  const ColorItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 15, itemBuilder: (context, index) => ColorItem()),
    );
  }
}
