import 'package:car_app/app/models/reminder.dart';
import 'package:car_app/app/models/responsable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  List<Responsable> grupo = [
    Responsable(name: 'Tomás', color: Colors.blue),
    Responsable(name: 'Jaime', color: Colors.red),
    Responsable(name: 'Mariano', color: Colors.green),
  ];
  List<Reminder> recordatorios = [];
  final String user = 'Jaime';
  HomePageController() {
    // Initialize Recordatorios here
    recordatorios = [
      Reminder(
          dateString: '05/05',
          title: 'Recargar matafuegos',
          responsible: grupo.first),
      Reminder(
        dateString: '07/05',
        title: 'Turno VTV',
        responsible: grupo[1],
      ),
      Reminder(
          dateString: '16/07',
          title: 'Cambio de líquido para frenos',
          responsible: grupo[2]),
      Reminder(
          dateString: '16/07',
          title: 'Cambio de aceite',
          responsible: grupo[2]),
      Reminder(
          dateString: '16/07',
          title: 'Cambio de aceite',
          responsible: grupo[2]),
      Reminder(
          dateString: '16/07',
          title: 'Cambio de aceite',
          responsible: grupo[2]),
      Reminder(
          dateString: '16/07',
          title: 'Cambio de aceite',
          responsible: grupo[2]),
      Reminder(
          dateString: '16/07',
          title: 'Cambio de aceite',
          responsible: grupo[2]),
      Reminder(
          dateString: '16/07',
          title: 'Cambio de aceite',
          responsible: grupo[2]),
    ];
  }
}
