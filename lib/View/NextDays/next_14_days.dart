import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/Resources/Colors/colors.dart';
import 'package:weather_app/View/NextDays/components/bottom_list.dart';
import 'package:weather_app/View/NextDays/components/center_card.dart';
import 'package:weather_app/ViewModel/Controllers/days_controller.dart';
import 'package:weather_app/ViewModel/Controllers/home_controller.dart';

import 'components/app_bar.dart';
import 'components/days_list.dart';

class NextDays extends StatelessWidget {
  NextDays({super.key});
  final homeController = Get.put(HomeController());
  final controller = Get.put(DaysController());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      decoration: AppColors.buildGradientBoxDecoration(),
      child:  Scaffold(backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(height: 20),
                  const CustomAppBarz(),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: size.width,
                    child: DaysList(),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: size.height * 0.5,
                  decoration: const BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100)
                    )
                  ),
                ),
              ),
              BottomList(),
              Hero(tag: 'TAG', child: Material(
                color: Colors.transparent,
                child:CenterCard() ,
              ))
            ],
          ),
        )
        ),
      ),
    );
  }
}
