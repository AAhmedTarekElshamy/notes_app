import 'package:flutter/material.dart';

import 'constants.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1, required this.contentPadding, this.onSaved});
   final String hintText;
   final int maxLines ;
   final double contentPadding;
   final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty?? true ){
          return 'this field is required' ;
        }else{
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(contentPadding),
        hintText: hintText,
        hintStyle:TextStyle(color: KPrimaryColor),
        border:  buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPrimaryColor),
      ),
    );
  }
}
OutlineInputBorder buildBorder([color]){
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(
      color:color ?? Colors.white,
    )
  );
}