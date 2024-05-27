import 'package:car_app/app/components/BodyText.dart';
import 'package:car_app/app/models/responsable.dart';
import 'package:flutter/material.dart';

class SingleReminder extends StatelessWidget {
  const SingleReminder(
      {super.key,
      required this.title,
      required this.date,
      required this.responsible});

  final String title;
  final String date;
  final Responsable responsible;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              BodyTextBold(date),
              const SizedBox(
                width: 5,
              ),
              SizedBox(width: screenWidth / 2, child: BodyTextRegular(title)),
              const Spacer(),
              BodyTextSmall(
                responsible.name,
                textColor: responsible.color,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
