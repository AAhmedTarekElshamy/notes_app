import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../cubits/notes_cubit/notes_states.dart';
import '../../models/note_model.dart';
import 'custom_notes_item.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return   BlocBuilder<NotesCubit,NotesState>(
      builder: (context,state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).list ??[];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            reverse: true,
            padding: EdgeInsets.zero,
            itemCount:  notes.length,
            itemBuilder: (context,index)=> CustomNoteItem(note: notes[index],),
          ),
        ) ;
      }
    );
  }
}