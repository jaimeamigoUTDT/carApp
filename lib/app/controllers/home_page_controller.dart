import 'package:car_app/app/models/reminder.dart';
import 'package:car_app/app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  List<Usuario> test_group = [
    Usuario(name: 'Tomás', color: Colors.blue),
    Usuario(name: 'Jaime', color: Colors.red),
    Usuario(name: 'Mariano', color: Colors.green),
  ];
  List<Reminder> test_events = [];
  final String user = 'Jaime';
  HomePageController() {
    // Initialize Recordatorios here
    test_events = [
      Reminder(
          dateString: '05/05',
          title: 'Recargar matafuegos',
          responsible: test_group.first),
      Reminder(
        dateString: '07/05',
        title: 'Turno VTV',
        responsible: test_group[1],
      ),
      Reminder(
          dateString: '16/07',
          title: 'Cambio de líquido para frenos',
          responsible: test_group[2]),
      Reminder(
          dateString: '16/07',
          title: 'Cambio de aceite',
          responsible: test_group[2]),
      Reminder(
          dateString: '16/07',
          title: 'Cambio de aceite',
          responsible: test_group[2]),
      Reminder(
          dateString: '16/07',
          title: 'Cambio de aceite',
          responsible: test_group[2]),
      Reminder(
          dateString: '16/07',
          title: 'Cambio de aceite',
          responsible: test_group[2]),
      Reminder(
          dateString: '16/07',
          title: 'Cambio de aceite',
          responsible: test_group[2]),
      Reminder(
          dateString: '16/07',
          title: 'Cambio de aceite',
          responsible: test_group[2]),
    ];
  }

  List<String> usernames = [];

  void updateUsernames(){
    for(var i = 0; i < test_group.length; i++){
      usernames[i] = test_group[i].name;
    }
  }

  List<Usuario> grupo = [];

  List<Reminder> events = [];

  List<DropdownMenuItem<dynamic>>? buildDropdownMenuItems(List<String> items) {
    return items.map((String item) {
      return DropdownMenuItem<dynamic>(
        value: item,
        child: Text(item),
      );
    }).toList();
  }

}
