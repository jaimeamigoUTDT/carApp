import 'package:car_app/app/components/fontStyles/Heading.dart';
import 'package:car_app/app/components/fontStyles/SubHeading.dart';
import 'package:flutter/material.dart';

class CarContainer extends StatelessWidget {
  const CarContainer({super.key});

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
            const Heading('Chevrolet Cruze'),
            const SubHeading('AB 017 VR'),
            Image.asset('assets/images/cruze.png'),
          ],
        ),
      ),
    );
  }
}
