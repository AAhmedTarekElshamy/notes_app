import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/custom_notes_item.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';
import 'package:notes_app/views/widgets/notes_body.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder:(context){
            return AddNoteBottomSheet();
          } );
        },
        child:const Icon(Icons.add),
      ),
      body: NotesBody(),
    );
  }
}
