abstract class AddNoteState{

}
class AddNoteInit extends AddNoteState{

}
class AddNoteLoading extends AddNoteState{

}
class AddNoteSuccess extends AddNoteState{

}
class AddNoteFaluire extends AddNoteState{
final String? errorMessage;

  AddNoteFaluire({required this.errorMessage});


}