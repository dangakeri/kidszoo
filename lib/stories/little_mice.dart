import 'package:flutter/material.dart';

import '../consts/app_colors.dart';

class LittleMice extends StatelessWidget {
  const LittleMice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Theme.of(context).backgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Theme.of(context).buttonColor,
          ),
        ),
        title: Text(
          'The Little Mice and the Big Elephants',
          style: TextStyle(
              color: Theme.of(context).buttonColor,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(children: [
        const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: 200,
          width: MediaQuery.of(context).size.width * 0.8,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/little mice.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '     Once upon a time, a village was ruined by a strong earthquake. The houses and roads got totally damaged. The village was shattered on the whole. Due to this, the villagers were forced to leave their houses and settle somewhere else. Finding the place vacant, the mice began to live in the ruined houses. Soon their number grew into hundreds and thousands.\n     There was a big lake located near the ruined village. A herd of elephants used to visit the lake for drinking water. This was the only way available to them, to reach the lake. On their way to the lake, the elephants crushed hundreds of mice daily under their heavy feet. By this action of the elephants, the population of the mice was affected. The problem was getting bigger and bigger day by day. In order to find a solution to this problem, the mice held a meeting. It was decided that a request should be made to the king of the elephants regarding the problem. The King Mice met the King Elephant and asked, “Sir, we live in the ruins of the village, but every time when your herd crosses the village, thousands of my subjects get crushed under the colossal feet of your herd. Kindly change your route. We promise to help you in the hour of your need, if you keep my term.”\n     The king elephant laughed on hearing this and replied,” You mice are very small to be of any help to giants like us. But doesn’t matter, we would favor you by changing our route to reach the lake and making you safer”. The King mice thanked the king elephant and returned home.\n     One day a group of elephant-hunters came and trapped the group of elephants in huge strong nets. The elephants struggled hard to free themselves, but all in vain. Suddenly, the king of elephants remembered the promise of the king of mice, who had talked earlier about helping the elephants when needed. He summoned one of the elephants of his herd which had not been trapped, to go and contact the king of rats.\n     On listening to the elephant, the rat king immediately took his entire group of mice to rescue the herd. He found the elephants trapped in a thick net. The mice set themselves on the task. They nibbled the thick net at thousands of spots making it loose. The elephants broke the loose net and got free. They were grateful to the mice for their great help and became friends for ever.',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Moral: Sometimes a weak looking person may prove stronger than others',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(height: 20),
      ]),
    );
  }
}
