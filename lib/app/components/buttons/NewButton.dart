import 'package:car_app/app/components/buttons/customDropDown.dart';
import 'package:car_app/app/components/fontStyles/BodyText.dart';
import 'package:car_app/app/components/cards/DoubleInput.dart';
import 'package:car_app/app/components/buttons/addIcon.dart';
import 'package:car_app/app/controllers/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewButton extends StatelessWidget {
  NewButton({super.key});

  final controller =
      Get.put(_TaskModalController()); // Initialize the controller

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context)
                  .viewInsets
                  .bottom, // Adjust the padding when keyboard is open
            ),
            child: SingleChildScrollView(
              child: _NewEventModal(),
            ),
          ),
        );
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
  _NewEventModal();
  final controller = Get.put(_TaskModalController());
  final homeController = Get.put(HomePageController());

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
          Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const BodyTextRegular(
                  'Cancelar',
                  textColor: Color(0xFFD70015),
                ),
              ),
              const Spacer(),
              const BodyTextBold('Nuevo evento'),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  //Guardar el evento
                  //saveEvent()
                  //Cerrar el Modal
                  Navigator.pop(context);
                },
                child: const BodyTextRegular(
                  'Agregar',
                  textColor: Color(0xFF0A84FF),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight / 24),
          DoubleInput(
            'Título',
            'Fecha',
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: DoubleInput(
                'Dirección',
                'Notas',
              ),),
          CustomDropDown(stringItems: homeController.usernames),
        ],
      ),
    );
  }
}

class _TaskModalController extends GetxController {
  late final String title;
  late final String date;
  late final String direccion;
  late final String notas;

  // Function to create DropdownMenuItem from List<String>
  
}
