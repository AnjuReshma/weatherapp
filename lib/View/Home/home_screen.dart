import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/Resources/Colors/colors.dart';
import 'package:weather_app/View/Home/components/app_bar.dart';
import 'package:weather_app/View/Home/components/container_list.dart';
import 'package:weather_app/View/Home/components/info_card.dart';
import 'package:weather_app/View/NextDays/next_14_days.dart';
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
              const SizedBox(height: 2),
              const CustomAppBar(),
              const SizedBox(height:2),
              Location(),
              Hero(tag: 'TAG', child: Material(
                color: Colors.transparent,
                child: InfoCard(),
              )),
              ContainerList(),
              const SizedBox(height: 4),
              GestureDetector(
                onTap: ()=>Get.to(()=>const NextDays()),
                child: const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text('Today',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),),
                    Spacer(),
                    Text(
                      'Next 14 Days',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                        ),
                        )
                  ],
                ),
              ))
             ],
            ),
            ) ,
        ),
      ));
  }
}
