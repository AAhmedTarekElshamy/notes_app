import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import 'add_note_form.dart';
import 'customButton.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Container(
        padding: EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        decoration: BoxDecoration(
          color: Color(0xff2d2d2d),
        ),
        child: BlocConsumer<AddNotesCubit, AddNoteStates>(
            listener: (context, state) {
          if (state is AddNoteFaluire) {
            print('there was an error${state.errorMessage}');
          } else if (state is AddNoteSuccess) {
            const SnackBar(
              content: Text('the operation succeded'),
              backgroundColor: Colors.deepOrange,
              duration: Duration(seconds: 2),
            );
            Navigator.pop(context);
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          }
        }, builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: const SingleChildScrollView(
              child: AddNoteForm(),
            ),
          );
        }),
      ),
    );
  }
}
