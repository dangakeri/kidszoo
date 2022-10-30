import 'package:flutter/material.dart';
import 'package:kidszoo/consts/app_colors.dart';
import 'package:kidszoo/ui/reading.dart';
import 'package:kidszoo/ui/settings.dart';
import 'package:kidszoo/ui/shapes.dart';
import 'package:kidszoo/ui/stories.dart';
import 'package:kidszoo/ui/vocab.dart';

import 'numbers.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Hero(
          tag: 'kids',
          child: Image.asset(
            'assets/kidszoo.png',
            height: 150,
            width: 150,
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        // shrinkWrap: true,
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
                    // physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 15,
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.8,
                    children: [
                      CardWidget(
                        image: Image.asset(
                          'assets/numbers logo.png',
                          height: 80,
                          width: 80,
                        ),
                        title: 'Numbers',
                        subtitle: '(Nombres)',
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Numbers()));
                        },
                      ),
                      CardWidget(
                        image: Image.asset(
                          'assets/reading.png',
                          height: 80,
                          width: 80,
                        ),
                        title: 'Reading',
                        subtitle: '(en train de lire)',
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Reading()));
                        },
                      ),
                      CardWidget(
                        image: Image.asset(
                          'assets/Shapes logo.png',
                          height: 80,
                          width: 80,
                        ),
                        title: 'Shapes',
                        subtitle: '(formes)',
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Shapes()));
                        },
                      ),
                      CardWidget(
                        image: Image.asset(
                          'assets/vocab.png',
                          height: 80,
                          width: 80,
                        ),
                        title: 'Vocab & Letters',
                        subtitle: '(vocabulaire et lettres)',
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Vocab()));
                        },
                      ),
                      CardWidget(
                        image: Image.asset(
                          'assets/stories.png',
                          height: 80,
                          width: 80,
                        ),
                        title: 'Stories',
                        subtitle: '(histoires)',
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Stories()));
                        },
                      ),
                      CardWidget(
                        image: Image.asset(
                          'assets/settings.png',
                          height: 80,
                          width: 80,
                        ),
                        title: 'Settings',
                        subtitle: '(réglages)',
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Settings()));
                        },
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
  final Image image;
  final String title;
  final String subtitle;
  final VoidCallback callBack;
  const CardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
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
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
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
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              subtitle,
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
