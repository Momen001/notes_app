import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

import 'package:noteapp/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchallnotes() {
    var notesbox = Hive.box<NoteModel>('kNotesBox');

    notes = notesbox.values.toList();
    emit(NotesSuccess());
  }
}
