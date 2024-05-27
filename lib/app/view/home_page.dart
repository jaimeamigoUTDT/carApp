import 'package:car_app/app/components/CarContainer.dart';
import 'package:car_app/app/components/Heading.dart';
import 'package:car_app/app/components/Recordatorios.dart';
import 'package:car_app/app/controllers/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomePageController> {
  HomePage({super.key});

  @override
  final controller = Get.put(HomePageController()); // Initialize the controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 20, bottom: 10),
                child: Heading('Bienvenido, ${controller.user}'),
              ),
              const CarContainer(),
              const SizedBox(
                height: 20,
              ),
              Recordatorios(controller.recordatorios),
            ],
          ),
        ),
      ),
    );
  }
}
