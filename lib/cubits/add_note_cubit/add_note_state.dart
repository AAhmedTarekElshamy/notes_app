abstract class AddNoteStates{

}
class AddNoteInitial extends AddNoteStates{

}
class AddNoteLoading extends AddNoteStates{

}
class AddNoteSuccess extends AddNoteStates{

}
class AddNoteFaluire extends AddNoteStates{
final String? errorMessage;

  AddNoteFaluire({required this.errorMessage});


}