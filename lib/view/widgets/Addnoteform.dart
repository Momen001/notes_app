// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:noteapp/cubits/cubit/add_note_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/view/widgets/buttom.dart';
import 'package:noteapp/view/widgets/color_list.dart';
import 'package:noteapp/view/widgets/textfield.dart';

class Addnoteform extends StatefulWidget {
  const Addnoteform({
    super.key,
  });

  @override
  State<Addnoteform> createState() => _AddnoteformState();
}

class _AddnoteformState extends State<Addnoteform> {
  final GlobalKey<FormState> formkay = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkay,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Textfield(
            onsaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          Textfield(
            onsaved: (value) {
              subtitle = value;
            },
            hint: 'Subtitle',
            maxlines: 5,
          ),
          const SizedBox(
            height: 16,
          ),
          const Colorlist(),
          const SizedBox(
            height: 16,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return Buttom(
                isloading: state is AddNoteLoading ? true : false,
                ontap: () {
                  if (formkay.currentState!.validate()) {
                    formkay.currentState!.save();

                    var currentDate = DateTime.now();

                    var formattedCurrentDate =
                        DateFormat('dd-mm-yyyy').format(currentDate);
                    var notemodel = NoteModel(
                        title: title!,
                        subtitle: subtitle!,
                        date: formattedCurrentDate,
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addnote(notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
