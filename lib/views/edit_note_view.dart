import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/edit_note_view_body.dart';
class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff82D2D2D) ,
      body: Padding(
        padding: EdgeInsets.all(22.0),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            EditNoteViewBody(note: note,),
          ],
        ),
      ),
    );
  }
}
