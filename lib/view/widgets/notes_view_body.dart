import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/cubit/notes/notes_cubit.dart';
import 'package:noteapp/view/widgets/app_bar.dart';
import 'package:noteapp/view/widgets/listview.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<Body> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchallnotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Appbar(title: 'Note', icon: Icons.add_box),
          Expanded(child: Listview())
        ],
      ),
    );
  }
}
