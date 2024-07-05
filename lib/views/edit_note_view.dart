import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/edit_note_view_body.dart';
class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            EditNoteViewBody(),
          ],
        ),
      ),
    );
  }
}
