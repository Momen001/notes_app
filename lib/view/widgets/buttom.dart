import 'package:flutter/material.dart';

class Buttom extends StatelessWidget {
  const Buttom({super.key, this.ontap, this.isloading = false});
  final void Function()? ontap;
  final bool isloading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 56,
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: isloading
              ? const CircularProgressIndicator()
              : const Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
        ),
      ),
    );
  }
}
