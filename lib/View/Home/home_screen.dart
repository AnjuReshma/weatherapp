import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/Resources/Colors/colors.dart';
import 'package:weather_app/View/Home/components/app_bar.dart';
import 'package:weather_app/ViewModel/Controllers/home_controller.dart';
import 'components/location.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppColors.buildGradientBoxDecoration(),
      child:   Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
             children: [
              const SizedBox(height: 20),
              const CustomAppBar(),
              const SizedBox(),
              Location(),
             ],
            ),
            ) ,
        ),
      ));
  }
}
