import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading(this.texto, {super.key});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(
        color: Color(0xFF3A3A3C),
        fontFamily: 'SFPRODISPLAY',
        fontSize: 25,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.75,
      ),
      textAlign: TextAlign.start,
    );
  }
}
