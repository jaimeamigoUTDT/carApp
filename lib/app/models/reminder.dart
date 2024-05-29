import 'package:car_app/app/models/usuario.dart';

class Reminder {
  Reminder({
    required this.dateString,
    required this.title,
    required this.responsible,
    this.direccion = '',
    this.notas = '',
  });

  final String dateString;
  final String title;
  final Usuario responsible;
  final String direccion;
  final String notas;
}
