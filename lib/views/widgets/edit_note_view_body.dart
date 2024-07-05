import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_app_bar.dart';
class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      CustomAppBar(title: 'Edit Note',icon: FontAwesomeIcons.check,),

    ],
    );
  }
}
