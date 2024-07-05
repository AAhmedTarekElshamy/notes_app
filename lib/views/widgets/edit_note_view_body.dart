import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          title: 'Edit Note',
          icon: FontAwesomeIcons.check,
        ),
        SizedBox(
          height: 20,
        ),
        CustomTextField(
          hintText: 'Title',
          contentPadding: 20,
        ),
        SizedBox(
          height: 25,
        ),
        CustomTextField(
          hintText: 'content',
          maxLines: 5,
          contentPadding: 30,
        ),
      ],
    );
  }
}
