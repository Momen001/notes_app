import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noteapp/cubits/cubit/add_note_cubit.dart';
import 'package:noteapp/cubits/cubit/notes/notes_cubit.dart';

import 'package:noteapp/view/widgets/Addnoteform.dart';

class Addnote extends StatelessWidget {
  const Addnote({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {}
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchallnotes();
            Navigator.pop(context);
            Fluttertoast.showToast(
                msg: "NOTE ADDED",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.green,
                textColor: Colors.white,
                fontSize: 16.0);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const SingleChildScrollView(
                  child: Addnoteform(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
