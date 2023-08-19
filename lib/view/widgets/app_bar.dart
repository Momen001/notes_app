import 'package:flutter/material.dart';
import 'package:noteapp/view/widgets/cicon.dart';

class Appbar extends StatelessWidget {
  const Appbar(
      {super.key, required this.title, required this.icon, this.onPressed});
  final void Function()? onPressed;
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24),
        ),
        Cicon(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}
