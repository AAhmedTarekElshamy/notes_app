import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/constants.dart';

class CustomButton extends StatelessWidget {
   const CustomButton({super.key, required this.onTap, required this.text, this.isLoading=false,});
  final String text;
   final bool isLoading;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(
          child:isLoading? const CircularProgressIndicator(
            color: Colors.black,
          ): Text(
            text,
            style:const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
