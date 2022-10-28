import 'package:flutter/material.dart';

import '../consts/app_colors.dart';

class MonkeyAndCrocodile extends StatelessWidget {
  const MonkeyAndCrocodile({super.key});

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
          'The Monkey and the Crocodile',
          style: TextStyle(
            color: Theme.of(context).buttonColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
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
              'assets/Monkey and Crocodile.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '     Long ago, there lived a monkey named Raktamukha, on a Jamun (Black-berry) tree by the side of a river. The tree was always full of fruits, which were as sweet as nectar. The Monkey used to eat fruits from the tree. Raktamukha was happily passing his days jumping from one tree to another. Once, a crocodile named Karalamukha came out of the waters and took rest under the tree on which the monkey lived.\n     Raktamukha, who was sitting high on a branch, saw the crocodile taking rest under the tree. The monkey became very eager to talk to the crocodile. Since he had no friends, he wanted to make friends with him. Addressing the crocodile, Raktamukha said, “As you’re taking rest under the tree, you’re my guest and it’s my duty to offer you food.” The monkey gave a lot of Jamuns to the crocodile to eat. The crocodile ate them to his fill. He thanked the monkey for his generosity and went home.\n     Karalamukha started coming ashore everyday and enjoy the fruits offered by the monkey. Soon they became good friends. Both of them started spending time with each other discussing the world. One day, the crocodile asked the monkey for some Jamuns to take for his wife. The Monkey happily gave the fruits to the crocodile. The crocodile took the fruits cheerfully to his wife and also narrated the whole story to her.\n      After eating the fruits, the crocodile\'s wife was overjoyed and said to her husband, "Dear, if these fruits are so tasty, then the monkey who eats these fruits must be ten times tastier. Why don\'t you bring the heart of this monkey for my meals?” The crocodile was stunned to hear such words from his wife. He replied,” Sweetheart, the monkey is my friend. It would not be fair to take his heart”. The crocodile’s wife was shrewd and pleaded with her husband to bring monkey’s heart for her. The crocodile was unwilling to deceive his friend, but then she insisted on not eating anything till he brought her monkey’s heart.\n     The Crocodile was left with no other option, but to bring monkey’s heart for his wife. He was afraid that how could he ask for such thing from his friend. He devised a plan and rushed to the monkey. Raktamukha was waiting for his dear friend for the daily meeting. Reaching ashore, Karalamukha asked the monkey in a sad tone, "My wife and I invite you to our home for a dinner. My wife is very angry with me for not having invited you earlier". He stated that his wife is anxious to meet such a nice friend.\n     Poor monkey didn’t know about the plan and believed the story of crocodile. He asked the crocodile,” I accept your invitation, but how will I go with you? I don’t know how to swim?” The crocodile replied,” Don’t worry. Come and sit on my back. I‘ll take you to my house.” The monkey happily sat on the back of the crocodile and they started their journey. The crocodile entered in the deep waters with an intention to kill the monkey. The monkey got scared to see water all around and asked the crocodile to move slowly.\n      The crocodile thought that now he could reveal his real intentions to the monkey, as it was impossible for him to escape from the middle of the river. The crocodile gullibly said to the monkey, “I am taking you to my home to please my wife. She wants to eat your heart. She says that since you eat tasty fruits day and night, your heart must be ten times tastier than those fruits." \n     The monkey was taken aback to hear these words. He had never expected this type of a request from a friend. He kept cool and said wittingly, "Oh dear! Why didn’t you tell me earlier? It would be my privilege to offer my heart to your charming wife. I usually keep my heart safely in the burrow of the tree. In order to serve my heart to your wife, I have to go back to get my heart.”\n     The foolish crocodile swiftly then swam back to the tree where the monkey lived. On reaching the bank the monkey quickly jumped off the crocodile’s back and climbed up his home tree. The crocodile was in a hurry and realized that the monkey was taking too long in getting his heart. Impatiently he asked, “What is the delay? Get you heart. My wife will be very happy.”\n      By the time, the monkey had realized that this was a rebirth for him. The monkey laughed and answered, "My dear foolish friend. You\'ve deceived me as a friend. Can any one take out his heart and keep that in a burrow. It was all a trick to save my life and teach a lesson to an unfaithful friend like you. Now go away and don’t ever come back." The crocodile was ashamed for his act and went home with his head bent down.',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Moral: At times, presence of mind pays well.',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(height: 20),
      ]),
    );
  }
}
