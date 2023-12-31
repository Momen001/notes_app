import 'package:flutter/material.dart';

import 'package:noteapp/view/widgets/add_note.dart';

import 'widgets/notes_view_body.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const Addnote();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const Body(),
    );
  }
}
