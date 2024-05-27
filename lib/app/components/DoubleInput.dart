import 'package:flutter/material.dart';

class DoubleInput extends StatelessWidget {
  const DoubleInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: const EdgeInsets.only(left: 18),
      child: const Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Título',
              hintStyle: TextStyle(
                color: Color(0xFFC1C1C1),
                fontFamily: 'SFPRODISPLAY',
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              border: InputBorder.none,
            ),
          ),
          Divider(
            color: Color(0xFFD6D6D6), // Color of the divider line
            thickness: 1,
            indent: 18,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Fecha',
              hintStyle: TextStyle(
                color: Color(0xFFC1C1C1),
                fontFamily: 'SFPRODISPLAY',
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              border: InputBorder.none,
            ),
          ),
        ],
      ),
    );
  }
}
