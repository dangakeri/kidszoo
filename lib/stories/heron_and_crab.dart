import 'package:flutter/material.dart';
import 'package:kidszoo/consts/app_colors.dart';

class Heron extends StatelessWidget {
  const Heron({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
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
          'Heron and the crab',
          style: TextStyle(
            color: Theme.of(context).buttonColor,
          ),
        ),
      ),
      body: ListView(children: [
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 200,
          width: MediaQuery.of(context).size.width * 0.8,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/heron.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '     Once upon a time, there lived a crane by the side of a pond. He used to catch the fish from the same pond. The crane always had a full meal, but with the growing age he got older and weaker. He became so weak that he could not arrange for his food. The condition was that the fish swam around him, but he could not catch them.\n     One day, he was extremely hungry. He hadn’t eaten anything for the past many days. To satisfy his hunger, without much toil and trouble, he devised a plan. In order to start off with his plan, he went to the side of a pond with a gloomy face without any intention to catch a fish. The fish, frogs and crabs thought why he was not trying to catch any food. One big crab, on seeing the sad crane asked him what the matter was. \n      The crane replied, “Alas! I am worried that the pond is soon going to be devoid of any fish, which are in turn my source of food. I have heard that some people are going to fill the tank with mud and grow crops over it”. All the creatures of the pond got worried after hearing the crane. Founding the situation in his favor, the stork said, “I know of a pond somewhat far away, where all the creatures will be safe. If the creatures are interested, I can carry a few each day to the other pond where they will be safe”.     \nEveryone in the lake was eager to take the help of the crane. The crane also confirmed that he required rest between trips due to his age. Also, he would be able to carry a few fish at a time. The creatures were ready to go with the crane on his condition. In the very first trip, the crane took some fish in his beak, but instead of taking them to another pond, he took them to a nearby hill and ate them. After taking rest for sometime, again when he felt hungry, he took the second trip.\n      In this manner, the crane was getting a continuous supply of fish without any effort. Within a few days, he regained his health and became fleshy. The big crab also wanted to be saved. One day, the crab requested the crane to take him to the other pond. The crane thought it was a nice idea to try different food. He agreed to take the crab on the next trip.\n      On the next trip, the crab happily went with the crane. During the trip, when some time had passed, the crab asked, “How far is the pond now?” The crane found that the crab was quite an innocent creature and would never know about his evil plans. So, he said angrily, "You fool, do you think I am your servant? There is no other pond around here. I made this plan in order to be able to eat you all. Now you too be prepared to die."\n      The crab realized the foul play of the crane. Without loosing his senses, he quickly tightened his sharp claws around the neck of the crane. The crab snapped off the head of the crane. Thus, the crane died a selfish death. The crab somehow dragged himself back to the pond and narrated the whole incident to all the creatures of the pond. Every one of them thanked the crab for his effort and they lived happily thereafter',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Moral: Excess of greed is harmful',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(height: 20),
      ]),
    );
  }
}
