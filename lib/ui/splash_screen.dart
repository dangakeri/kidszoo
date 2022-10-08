import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kidszoo/consts/app_colors.dart';

import 'home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => const Home()));
    });
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Hero(
                  tag: 'kids',
                  child: Image.asset(
                    'assets/kidzoo.png',
                    height: 90,
                    width: 90,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'KidsZoo',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
          ),
          const Spacer(),
          Center(
            child: SvgPicture.asset(
              "assets/undraw_true_friends_c-94-g-2.svg",
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}
