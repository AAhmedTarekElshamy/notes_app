import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import '../edit_note_view.dart';
class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => EditNoteView(note: note,),));
      },

      child: Container(
        margin:const EdgeInsets.only(top: 16),
        padding:const EdgeInsets.only(top: 20,bottom: 24,left: 16,right: 16 ),
        decoration: BoxDecoration(
          color: Color(note.color)??Colors.deepOrangeAccent,

          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:const EdgeInsets.all(0),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(note.title,style: TextStyle(
                  color: Colors.black.withOpacity(.8),
                  //Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              subtitle:    Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(note.subTitle ,style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.5)
                ),),
              ),
              trailing:  IconButton(
                  onPressed: (){
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon:const Icon( FontAwesomeIcons.trash,size: 25,color: Colors.black,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(note.date.substring(0,16),style: TextStyle(
                color: Colors.black.withOpacity(0.4),
              ),),
            ),
          ],
        ),
      ),
    )
    ;
  }
}

