import 'package:flutter/material.dart';

import '../consts/app_colors.dart';

class OldTiger extends StatelessWidget {
  const OldTiger({super.key});

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
          'An Old Tiger and a Greedy Traveler',
          style: TextStyle(
              color: Theme.of(context).buttonColor,
              fontSize: 18,
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
              'assets/old tiger.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '      Once upon a time, there lived a Tiger in a forest. With the passing years, he became too old to hunt. One day, the Tiger was walking by the side of a lake and suddenly, a gold bangle came across his sight. Quickly he picked up the bangle and thought that he could use it as an allure to catch someone. As he was under the thought process, a traveler happened to pass through the opposite side of the lake.      The Tiger instantly thought to himself, “What a delicious meal he would make?” He planned a scheme to attract the traveler. He held the bangle in his paw making it visible to the traveler and said, “Would you like to take this gold bangle. I don’t require it”. At once, the traveler wanted to take the bangle, but he hesitated to go near the Tiger. He knew that it was risky, yet he sought the Gold Bangle. He planned to be cautious, so he asked the Tiger, “How can I believe you? I know you are a beast and would kill me”.\n     The Clever Tiger innocently said, “Listen Traveler, in my youth, I was wicked unquestionably, but now I have changed myself. With the advice of a Sanyasi, I have left all evil. Now I am all alone in this world and have engaged myself in kind deeds. Moreover, I have grown old. I have no teeth and my claws are blunt. So, there is no need to fear from me”. The traveler’s was taken in by this smart talk and his love for gold soon overcame his fear of the Tiger.He jumped into the lake to wade across the Tiger.\n       But as per the plan of the Tiger, he got trapped in the marsh. On seeing this, the Tiger consoled him and said, “Oh! You need not worry. I’ll help you”. Gradually he came towards the traveler and seized him. As the traveler was being dragged out, onto the bank, he thought to himself, “Oh! This beast\'s talk of saintliness took me in totally. A beast is always a beast. If only I had not let my greed overcome my reason, I could be alive”. However, it was too late; the Tiger killed the traveler and ate him up. Like this, the traveler became victim of greed and Tiger was successful in his evil plan.',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Moral: Greed never goes unpunished.',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(height: 20),
      ]),
    );
  }
}
