import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  const Textfield(
      {super.key,
      required this.hint,
      this.maxlines = 1,
      this.onsaved,
      this.onchanged});
  final String hint;
  final int maxlines;
  final void Function(String?)? onsaved;
  final void Function(String?)? onchanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onchanged,
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'filed is requeird';
        } else {
          return null;
        }
      },
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hint,
        helperStyle: const TextStyle(color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
