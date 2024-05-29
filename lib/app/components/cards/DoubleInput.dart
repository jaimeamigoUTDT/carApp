import 'package:car_app/app/models/reminder.dart';
import 'package:car_app/app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoubleInput extends StatelessWidget {
  DoubleInput(this.input1, this.input2, {super.key});

  final String input1;
  final String input2;

  final controller =
      Get.put(_DoubleInputController()); // Initialize the controller

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: const EdgeInsets.only(left: 18),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: input1,
              hintStyle: const TextStyle(
                color: Color(0xFFC1C1C1),
                fontFamily: 'SFPRODISPLAY',
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              border: InputBorder.none,
            ),
          ),
          const Divider(
            color: Color(0xFFD6D6D6), // Color of the divider line
            thickness: 1,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: input2,
              hintStyle: const TextStyle(
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

class _DoubleInputController extends GetxController {
  late final String title;
  late final String date;
  late final Usuario responsable;
  late final String direccion;
  late final String notas;


  Reminder newTask(String titulo, String fecha, Usuario responsable,
      String direccion, notas) {
    return Reminder(
      title: titulo,
      dateString: fecha,
      responsible: responsable,
      direccion: direccion,
      notas: notas,
    );
  }
}
