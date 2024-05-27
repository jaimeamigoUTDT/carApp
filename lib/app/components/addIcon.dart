import 'package:flutter/material.dart';

class AddIcon extends StatelessWidget {
  const AddIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          color: const Color(0xFF0040DD),
          borderRadius: BorderRadius.circular(30)),
      alignment: Alignment.center,
      child: const Icon(
        Icons.add,
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
