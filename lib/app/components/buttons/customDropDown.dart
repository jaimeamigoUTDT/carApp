import 'package:car_app/app/controllers/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDropDown extends StatelessWidget {
  CustomDropDown({required this.stringItems, super.key});

  final homeController = Get.put(HomePageController());

  final List<String> stringItems;

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem>? dropItems =
        homeController.buildDropdownMenuItems(stringItems);

    return DropdownButton(
      items: dropItems,
      onTap: () {
        print(stringItems);
      },
      onChanged: (value) {
      },
      style: const TextStyle(

      ),
    );
  }
}
