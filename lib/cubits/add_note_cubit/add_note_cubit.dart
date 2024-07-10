import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import '../../models/note_model.dart';
import '../../views/widgets/constants.dart';
import 'add_note_state.dart';

class AddNotesCubit extends Cubit<AddNoteState> {
  AddNotesCubit(): super(AddNoteInitial());




  addNote(NoteModel note) async{
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.put('1', 'value' as NoteModel);
      emit(AddNoteSuccess());
    } catch(e){
      emit(AddNoteFaluire(errorMessage: e.toString()));
    }
  }

}
