import 'package:flutter/material.dart';
import 'package:noteapp/view/widgets/app_bar.dart';
import 'package:noteapp/view/widgets/textfield.dart';

class edit extends StatelessWidget {
  const edit({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 80,
            child: Appbar(title: 'Edit Note', icon: Icons.check),
          ),
          SizedBox(
            height: 24,
          ),
          textfield(hint: 'Title'),
          SizedBox(
            height: 24,
          ),
          textfield(
            hint: 'contant',
            maxlines: 5,
          )
        ],
      ),
    );
  }
}
