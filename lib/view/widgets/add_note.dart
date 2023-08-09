import 'package:flutter/material.dart';
import 'package:noteapp/view/widgets/buttom.dart';
import 'package:noteapp/view/widgets/textfield.dart';

class addnote extends StatelessWidget {
  const addnote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            textfield(
              hint: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            textfield(
              hint: 'Title',
              maxlines: 5,
            ),
            SizedBox(
              height: 16,
            ),
            buttom(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
