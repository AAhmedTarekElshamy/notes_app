import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';
import 'color-item.dart';
import 'color_item_list_view.dart';
import 'customButton.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String? title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key:formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value){
              title=value;
            },
            hintText: 'title',
            contentPadding: 20,
          ),
          const  SizedBox(
            height: 25,
          ),
          CustomTextField(
            onSaved: (value){
              subTitle=value;
            },
            hintText: 'content',
            maxLines: 5,
            contentPadding: 30,
          ),
          const   SizedBox(
            height: 25,
          ),
          ColorItemListView(),
          BlocBuilder<AddNotesCubit,AddNoteStates>(
            builder: (BuildContext context, state) {
           return   CustomButton(
              text:'Add' ,
              isLoading:state is AddNoteLoading? true : false ,
              onTap: (){
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                  var noteModel = NoteModel(title: title!, subTitle: subTitle!, date: DateTime.now().toString(), color: Colors.deepOrange.value);
                  BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);

                }else{
                  autovalidateMode=AutovalidateMode.always;
                  setState(() {

                  });
                }
              },
            );
              },
          ),
        ],
      ),
    );
  }
}
