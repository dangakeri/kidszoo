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
          MaterialPageRoute(builder: (BuildContext context) => Home()));
    });
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Expanded(
          //   flex: 4,
          //   child: Center(
          //     child: SvgPicture.asset("assets/leaf.svg"),
          //   ),
          // ),
          // Expanded(
          //   flex: 7,
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       Center(
          //         child: SvgPicture.asset(
          //           "assets/undraw_true_friends_c-94-g-2.svg",
          //           height: 512,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(
            height: 50,
          ),

          Center(
              child: Text(
            'KidsZoo',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
          )),
          Spacer(),
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
