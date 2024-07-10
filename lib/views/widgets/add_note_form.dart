import 'package:flutter/material.dart';

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
      child:   Column(
        children: [
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value){
              title=value;
            },
            hintText: 'title',
            contentPadding: 20,
          ),
          SizedBox(
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
          SizedBox(
            height: 25,
          ),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
        ],
      ),
    );
  }
}
