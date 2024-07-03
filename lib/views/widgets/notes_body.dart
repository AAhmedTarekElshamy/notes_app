import 'package:flutter/material.dart';

import 'custom_search_icon.dart';
import 'notes_list_view.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.all(22.0),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Notes',style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              CustomSearchIcon(),
            ],
          ),
          Expanded(child: NotesListView()),







        ],
      ),
    );
  }
}
