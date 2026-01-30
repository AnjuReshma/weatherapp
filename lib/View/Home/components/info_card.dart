import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/Resources/Images/image_assets.dart';
import 'package:weather_app/Utilities/utilities.dart';
import 'package:weather_app/ViewModel/Controllers/home_controller.dart';

class InfoCard extends StatelessWidget {
  InfoCard({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: 220,
      width: size.width,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 180,
            margin: const EdgeInsets.only(bottom: 30),
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue.withAlpha((0.3 * 255).round()),
                  Colors.blue.withAlpha((0.4 * 255).round()),
                  Colors.blue.withAlpha((0.3 * 255).round()),
                ],
              ),
            ),
          ),
          Positioned(
            top: -10,
            left: 10,
            child: Obx(
              () => Image.asset(
                controller.getImage(controller.currentIndex.value),
                height: 150,
                width: 170,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    controller.getCondition(),
                    style: const TextStyle(
                      height: 0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  Utilities.currentTime(),
                  style: TextStyle(
                    height: 0,
                    color: Colors.white.withAlpha((0.8 * 255).round()),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 40,
            right: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.white70.withAlpha((0.1 * 255).round())],
                    ).createShader(bounds);
                  },
                  child: Obx(
                    () => Text(
                      controller.getCurrentTemp(),
                      style: const TextStyle(
                        fontSize: 60,
                        height: 0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                Obx(
                  () => Text(
                    'Feel like${controller.getFeelLike()}',
                    style: const TextStyle(
                      height: 0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 0,
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Colors.white70.withAlpha((0.1 * 255).round())],
                ).createShader(bounds);
              },
              child: Image.asset(ImageAssets.windWave,height: 100,width: 200),
            ),
          ),
        ],
      ),
    );
  }
}
