import 'package:flutter/material.dart';
import 'package:weather_app/Resources/Colors/colors.dart';
import 'package:weather_app/Resources/Images/image_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: AppColors.buildGradientBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Image.asset(ImageAssets.nightStarRain,height: 200,width: 200),
        ),
      ),
    );
  }
}