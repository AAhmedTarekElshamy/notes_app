import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

import 'custom_app_bar.dart';
import 'custom_search_icon.dart';
import 'notes_list_view.dart';

class NotesBody extends StatefulWidget {
  const NotesBody({super.key});

  @override
  State<NotesBody> createState() => _NotesBodyState();
}

class _NotesBodyState extends State<NotesBody> {
  @override void initState() {

    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding: EdgeInsets.all(22.0),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomAppBar(title: 'Notes',icon: Icons.search,),
          Expanded(child: NotesListView()),







        ],
      ),
    );
  }
}
