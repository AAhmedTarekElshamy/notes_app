import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../models/note_model.dart';
import '../../views/widgets/constants.dart';
import '../add_note_cubit/add_note_state.dart';
import 'notes_states.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel> list = [];
  fetchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
      list = notesBox.values.toList();
      emit(NotesSuccess());
  }
}
