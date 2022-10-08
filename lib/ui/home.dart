import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidszoo/consts/app_colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Hero(
          tag: 'kids',
          child: Image.asset(
            'assets/kidzoo.png',
            height: 40,
            width: 40,
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
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
                    children: const [
                      CardWidget(
                        icon: Icon(
                          Icons.abc,
                          size: 33,
                        ),
                        title: 'Numbers',
                        subtitle: '(numero)',
                      ),
                      CardWidget(
                        icon: Icon(Icons.abc),
                        title: 'Alphabets',
                        subtitle: '(numero)',
                      ),
                      CardWidget(
                        icon: Icon(Icons.abc),
                        title: 'Numbers',
                        subtitle: '(numero)',
                      ),
                      CardWidget(
                        icon: Icon(Icons.abc),
                        title: 'Numbers',
                        subtitle: '(numero)',
                      ),
                      CardWidget(
                        icon: Icon(Icons.abc),
                        title: 'Numbers',
                        subtitle: '(numero)',
                      ),
                      CardWidget(
                        icon: Icon(Icons.abc),
                        title: 'Numbers',
                        subtitle: '(numero)',
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

class CardWidget extends StatelessWidget {
  final Icon icon;
  final String title;
  final String subtitle;
  const CardWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          icon,
          const SizedBox(
            height: 35,
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
    );
  }
}
