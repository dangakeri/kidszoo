import 'package:flutter/material.dart';

import '../consts/app_colors.dart';

class Shapes extends StatelessWidget {
  const Shapes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.85,
                  width: double.infinity,
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 15,
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.8,
                    children: [
                      Shape(
                        title: 'trapezium',
                        callBack: () {},
                        image: Image.asset(
                          'assets/kidzoo.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Shape(
                        title: 'Circle',
                        callBack: () {},
                        image: Image.asset(
                          'assets/kidzoo.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Shape(
                        title: 'Square',
                        callBack: () {},
                        image: Image.asset(
                          'assets/kidzoo.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Shape(
                        title: 'Rectangle',
                        callBack: () {},
                        image: Image.asset(
                          'assets/kidzoo.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Shape(
                        title: 'Star',
                        callBack: () {},
                        image: Image.asset(
                          'assets/kidzoo.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Shape(
                        title: 'Parralegram',
                        callBack: () {},
                        image: Image.asset(
                          'assets/kidzoo.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Shape extends StatelessWidget {
  final Image image;
  final String title;

  final VoidCallback callBack;
  const Shape({
    Key? key,
    required this.title,
    required this.callBack,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callBack,
      child: Container(
        height: 150,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            image,
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
