import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/bloc_observer.dart';
import 'package:noteapp/cubits/cubit/notes/notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/view/notes_view.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = Simpleblocoberver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>('kNotesBox');

  runApp(const Notes());
}

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const Notesview(),
      ),
    );
  }
}
