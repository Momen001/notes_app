import 'package:flutter/material.dart';

class Cicon extends StatelessWidget {
  const Cicon({super.key, required this.icon, this.onPressed});
  final void Function()? onPressed;

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 28,
          ),
        ));
  }
}
