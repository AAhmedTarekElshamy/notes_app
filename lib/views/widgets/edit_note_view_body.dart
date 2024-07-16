import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

import '../../models/note_model.dart';
import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
   String? title, content;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CustomAppBar(
          title: 'Edit Note',
          icon: FontAwesomeIcons.check,
          onPressed: (){
            widget.note.title=title  ?? widget.note.title;
            widget.note.subTitle=content  ?? widget.note.subTitle;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          },
        ),
        SizedBox(
          height: 20,
        ),
        CustomTextField(
          hintText: widget.note.title,
          onChanged:(value){
            title=value;
          },
          contentPadding: 20,
        ),
        SizedBox(
          height: 25,
        ),
        CustomTextField(
          hintText: widget.note.subTitle,
          onChanged: (value){
            content = value;
          },
          maxLines: 5,
          contentPadding: 30,
        ),
      ],
    );
  }
}
