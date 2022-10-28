import 'package:flutter/material.dart';
import 'package:kidszoo/consts/app_colors.dart';
import 'package:kidszoo/stories/ass_has_no_brain.dart';
import 'package:kidszoo/stories/golden_swan.dart';
import 'package:kidszoo/stories/heron_and_crab.dart';
import 'package:kidszoo/stories/hunter_and_doves.dart';
import 'package:kidszoo/stories/little_mice.dart';
import 'package:kidszoo/stories/old_tiger.dart';
import 'package:kidszoo/stories/sages_daughter.dart';
import 'package:kidszoo/stories/shivering_monkey.dart';
import 'package:kidszoo/stories/talkative_tortoise.dart';

import '../stories/blind_vulture.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: const Text('Stories', style: TextStyle(color: Colors.black)),
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
                    mainAxisSpacing: 15,
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.8,
                    children: [
                      StoriesTileWidget(
                        title: 'Ass has no brain',
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const AssNoBrain()));
                        },
                        image: Image.asset(
                          'assets/Ass.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: 'Birds & monkeys',
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const ShiveringMonkey()));
                        },
                        image: Image.asset(
                          'assets/Birds and monkeys.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: 'Monkey and the Crocodile',
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const MonkeyAndCrocodile()));
                        },
                        image: Image.asset(
                          'assets/Monkey and Crocodile.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: 'Sages Daughter',
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const SagesDaughter()));
                        },
                        image: Image.asset(
                          'assets/sages daughter.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: 'Old Tiger and greedy Traveller',
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const OldTiger()));
                        },
                        image: Image.asset(
                          'assets/old tiger.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: 'Talkative Tortoise',
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Talkative()));
                        },
                        image: Image.asset(
                          'assets/Talkative Tortoise.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: 'Little Mice and big Elephants',
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const LittleMice()));
                        },
                        image: Image.asset(
                          'assets/little mice.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: 'Golden Swan',
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Golden()));
                        },
                        image: Image.asset(
                          'assets/golden swan.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: 'Heron and the Crab',
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Heron()));
                        },
                        image: Image.asset(
                          'assets/heron.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: 'Hunter and Doves',
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Hunter()));
                        },
                        image: Image.asset(
                          'assets/hunter.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class StoriesTileWidget extends StatelessWidget {
  final Image image;
  final String title;

  final VoidCallback callBack;
  const StoriesTileWidget({
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
            // const SizedBox(height: 10),
            image,
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
