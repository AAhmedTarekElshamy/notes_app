import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';

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
      create: (context)=>AddNotesCubit(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: const BoxDecoration(
          color: Colors.grey,
        ),
        child: BlocConsumer<AddNotesCubit, AddNoteStates>(
            listener: (context, state) {
          if (state is AddNoteFaluire) {
             print('there was an error${state.errorMessage}');
          } else if (state is AddNoteSuccess) {
            SnackBar(content: Text('the operation succeded'),backgroundColor: Colors.deepOrange,duration: Duration(seconds: 2),);
            Navigator.pop(context);
          }
        }, builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNoteStates ? true : false,
            child: SingleChildScrollView(
              child: AddNoteForm(),
            ),
          );
        }),
      ),
    );
  }
}
