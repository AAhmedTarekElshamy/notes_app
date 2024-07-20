import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import 'color-item.dart';
import 'constants.dart';

class EditNoteColorListView extends StatefulWidget {
  const EditNoteColorListView({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorListView> createState() => _EditNoteColorListViewState();
}

class _EditNoteColorListViewState extends State<EditNoteColorListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kPrimaryColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kPrimaryColors.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
              widget.note.color = kPrimaryColors[index].value;
            });
          },
          child: ColorItem(
            color: kPrimaryColors[index],
            ifSelected: currentIndex == index,
          ),
        ),
      ),
    );
    ;
  }
}
