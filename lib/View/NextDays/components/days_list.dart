import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/ViewModel/Controllers/days_controller.dart';

class DaysList extends StatelessWidget {
  DaysList({super.key});

  final controller = Get.put(DaysController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: controller.homeController.model.value!.days!.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: ()=>controller.setDay(index),
            child: Obx(() => Container(
              width: 55,
              margin: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: controller.currentDay.value == index
                ? Colors.white
                : Colors.white12,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset(controller.getImage(index)),
                  ),
                  Text(controller.getMonth(index),
                  style: TextStyle(
                    color: controller.currentDay.value==index
                    ? Colors.purple
                    : Colors.white,
                    fontSize: 25,
                    height: 0,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text(controller.getMonthDay(index),
                  style: TextStyle(
                    color: controller.currentDay.value==index
                    ? Colors.purple
                    : Colors.white,
                    fontSize: 25,
                    height: 0,
                    fontWeight: FontWeight.bold
                  ),
                  )

                ],
              ),
            )),
          );
        },
      ),
    );
  }
}
