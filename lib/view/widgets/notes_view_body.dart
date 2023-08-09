import 'package:flutter/material.dart';
import 'package:noteapp/view/widgets/app_bar.dart';
import 'package:noteapp/view/widgets/listview.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Appbar(
            title: 'Note',
            icon: Icons.search,
          ),
          Expanded(child: Listview())
        ],
      ),
    );
  }
}
