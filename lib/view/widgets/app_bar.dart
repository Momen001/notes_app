import 'package:flutter/material.dart';
import 'package:noteapp/view/widgets/search_icon.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 24),
        ),
        Searchicon(
          icon: icon,
        )
      ],
    );
  }
}
