import 'package:car_app/app/components/BodyText.dart';
import 'package:car_app/app/components/DoubleInput.dart';
import 'package:car_app/app/components/addIcon.dart';
import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  const NewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const _NewEventModal();
            });
      },
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AddIcon(),
          SizedBox(
            width: 5,
          ),
          Text(
            'Nuevo',
            style: TextStyle(
                color: Color(0xFF0040DD),
                fontFamily: 'SFDISPLAYPRO',
                fontWeight: FontWeight.w500,
                fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class _NewEventModal extends StatelessWidget {
  const _NewEventModal();

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 23),
      decoration: const BoxDecoration(
        color: Color(0xFFF3F2F7),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              BodyTextRegular(
                'Cancelar',
                textColor: Color(0xFFD70015),
              ),
              Spacer(),
              BodyTextBold('Nuevo evento'),
              Spacer(),
              BodyTextRegular(
                'Agregar',
                textColor: Color(0xFF0A84FF),
              ),
            ],
          ),
          SizedBox(height: screenHeight / 24),
          const DoubleInput(),
        ],
      ),
    );
  }
}
