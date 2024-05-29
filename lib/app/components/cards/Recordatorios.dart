import 'package:car_app/app/components/fontStyles/Heading.dart';
import 'package:car_app/app/components/buttons/NewButton.dart';
import 'package:car_app/app/components/cards/SingleReminder.dart';
import 'package:car_app/app/models/reminder.dart';
import 'package:flutter/material.dart';

class Recordatorios extends StatelessWidget {
  const Recordatorios(this.recordatorios, {super.key});

  final List<Reminder> recordatorios;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(21),
        ),
        padding: const EdgeInsets.all(20),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Heading('Próximos eventos'),
            SizedBox(
              height: 200,
              child: _EventList(
                events: recordatorios,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            NewButton(),
          ],
        ),
      ),
    );
  }
}

class _EventList extends StatelessWidget {
  const _EventList({required this.events});

  final List<Reminder> events;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return SingleReminder(
          title: events[index].title,
          date: events[index].dateString,
          responsible: events[index].responsible,
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        color: Color(0xFFD6D6D6), // Color of the divider line
        thickness: 1,
      ),
      itemCount: events.length,
    );
  }
}
