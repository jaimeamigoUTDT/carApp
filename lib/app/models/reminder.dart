import 'package:car_app/app/models/responsable.dart';

class Reminder {
  Reminder(
      {required this.dateString,
      required this.title,
      required this.responsible});

  final String dateString;
  final String title;
  final Responsable responsible;
}
