import 'package:flutter/material.dart';

import 'custom_text_field.dart';
class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          CustomTextField(),
        ],

      ),
    );
  }
}
