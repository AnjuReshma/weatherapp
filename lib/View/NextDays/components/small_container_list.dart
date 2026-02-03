import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/Resources/Images/image_assets.dart';
import 'package:weather_app/View/Home/components/small_container.dart';
import 'package:weather_app/ViewModel/Controllers/days_controller.dart';
import 'package:weather_app/ViewModel/Controllers/home_controller.dart';

class SmallContainerList extends StatelessWidget {
  SmallContainerList({super.key});
  final homeController = Get.put(HomeController());
  final controller = Get.put(DaysController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Obx(() => SmallContainer(text: '${controller.day.value.precipprob.toInt().toString()}%', image: ImageAssets.heavyRain, color: Colors.white38, textColor: Colors.white),),
        const Spacer(),
        Obx(() => SmallContainer(text: '${controller.day.value.windspeed.toInt().toString()}km/h', image: ImageAssets.windWave, color: Colors.white38, textColor: Colors.white),),
        const Spacer(),
        Obx(() => SmallContainer(text: '${controller.day.value.humidity.toInt().toString()}%', image: ImageAssets.sun, color: Colors.white38, textColor: Colors.white),),
        const Spacer()
      ],
    );
  }
}
