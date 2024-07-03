import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.only(top: 20,bottom: 24,left: 16,right: 16 ),
      decoration: BoxDecoration(
        color: Color(0xffffcd7a),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding:EdgeInsets.all(0),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text('flutter Tips ',style: TextStyle(

                color: Colors.black.withOpacity(.8),
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),),
            ),
            subtitle:    Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text('Build  your career with tharwat samy',style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.5)
              ),),
            ),
            trailing:  IconButton(
                onPressed: (){},
                icon: Icon( FontAwesomeIcons.trash,size: 25,color: Colors.black,)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text('may 21,2022',style: TextStyle(
              color: Colors.black.withOpacity(0.4),
            ),),
          ),
        ],
      ),
    )
    ;
  }
}

