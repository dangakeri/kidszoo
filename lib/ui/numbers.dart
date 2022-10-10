import 'package:flutter/material.dart';

import '../consts/app_colors.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

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
            padding: const EdgeInsets.symmetric(horizontal: 25),
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
                    crossAxisCount: 5,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.8,
                    children: [
                      Digits(title: "1", subtitle: 'ONE', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Two', callBack: (() {})),
                      Digits(title: "3", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "4", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "5", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "6", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "7", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
                      Digits(title: "2", subtitle: 'Three', callBack: (() {})),
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

class Digits extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback callBack;
  const Digits({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callBack,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
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
            Text(
              subtitle,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
