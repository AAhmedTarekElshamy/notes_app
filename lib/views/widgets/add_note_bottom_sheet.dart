import 'package:flutter/material.dart';

import 'add_note_form.dart';
import 'customButton.dart';
import 'custom_text_field.dart';
class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration:const BoxDecoration(
       color: Colors.grey,
      ),
      child:const SingleChildScrollView(
        child:AddNoteForm(),
      ),
    );
  }
}
