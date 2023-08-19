// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/cubit/notes/notes_cubit.dart';
import 'package:noteapp/view/widgets/app_bar.dart';
import 'package:noteapp/view/widgets/edit_colors.dart';
import 'package:noteapp/view/widgets/textfield.dart';
import 'package:noteapp/models/note_model.dart';

class Edit extends StatefulWidget {
  const Edit({super.key, required this.note});

  final NoteModel note;

  @override
  State<Edit> createState() => _editState();
}

class _editState extends State<Edit> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 80,
            child: Appbar(
                onPressed: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.subtitle = content ?? widget.note.subtitle;
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fetchallnotes();
                  Navigator.pop(context);
                },
                title: 'Edit Note',
                icon: Icons.check),
          ),
          const SizedBox(
            height: 24,
          ),
          Textfield(
              onchanged: (value) {
                title = value;
              },
              hint: widget.note.title),
          const SizedBox(
            height: 24,
          ),
          Textfield(
            onchanged: (value) {
              content = value;
            },
            hint: widget.note.subtitle,
            maxlines: 5,
          ),
          const SizedBox(
            height: 24,
          ),
          EditNoteColorsList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
