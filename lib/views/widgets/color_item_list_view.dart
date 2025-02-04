import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/add_note_cubit/add_note_cubit.dart';
import 'color-item.dart';
import 'constants.dart';


class ColorItemListView extends StatefulWidget {
  ColorItemListView({Key? key}) : super(key: key);

  @override
  State<ColorItemListView> createState() => _ColorItemListViewState();
}

class _ColorItemListViewState extends State<ColorItemListView> {
  int? currentIndex;





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
              BlocProvider.of<AddNotesCubit>(context).color = kPrimaryColors[index];
            });

          },
          child: ColorItem(
            color: kPrimaryColors[index],
            ifSelected: currentIndex == index,
          ),
        ),
      ),
    );
  }
}
