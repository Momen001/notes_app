import 'package:flutter/material.dart';
import 'package:noteapp/view/widgets/edit.dart';
import 'package:noteapp/models/note_model.dart';

class Editpage extends StatelessWidget {
  const Editpage({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Edit(
        note: note,
      ),
    );
  }
}
