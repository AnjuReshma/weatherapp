import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/Resources/Images/image_assets.dart';
import 'package:weather_app/Utilities/utilities.dart';
import 'package:weather_app/ViewModel/Controllers/home_controller.dart';

class Location extends StatelessWidget {
  Location({super.key});

  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              controller.getAddress(),
              style: const TextStyle(
                height: 0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            Text(
               Utilities.formateDate(DateTime.now()),
               style: TextStyle(
                color: Colors.grey.withAlpha((0.7 * 255).round()),
                fontWeight: FontWeight.bold
               ),
                )
          ],
        ),
        const Spacer(),
         SizedBox(
          height: 120,
          width: 120,
          child: Padding(padding:const EdgeInsetsGeometry.all(20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(ImageAssets.map,fit: BoxFit.cover),
          ),
           ),
          
        )
      ],
    );
  }
}
