import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/cubits/cubit/add_note_cubit.dart';

class Coloritem extends StatelessWidget {
  const Coloritem({super.key, required this.isactive, required this.color});

  final bool isactive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isactive
        ? CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 32,
            backgroundColor: color,
          );
  }
}

class Colorlist extends StatefulWidget {
  const Colorlist({super.key});

  @override
  State<Colorlist> createState() => _ColorlistState();
}

class _ColorlistState extends State<Colorlist> {
  int currantindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  currantindex = index;
                  BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
                  setState(() {});
                },
                child: Coloritem(
                  color: kColors[index],
                  isactive: currantindex == index,
                ),
              ),
            );
          }),
    );
  }
}
