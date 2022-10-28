import 'package:flutter/material.dart';
import 'package:kidszoo/consts/app_colors.dart';

class AssNoBrain extends StatelessWidget {
  const AssNoBrain({super.key});

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
            )),
        title: Text(
          'Ass has no brain',
          style: TextStyle(
            color: Theme.of(context).buttonColor,
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
              'assets/Ass.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '      Once upon a time, there lived an old lion. The lion, the king of the forest had grown old. He became frail and due to this, he could not hunt for his food. Many a times, he didn’t get even a single animal to eat. With each passing day he became more and more weak. He realized that like this he could not live for long. Somehow, he had to manage for the food, otherwise he would definitely die. He thought that how could he arrange for his food? After much of the thought process, ultimately he decided that he should have an assistant.\n    The lion thought that a fox would be the best person to handle this position. He summoned the fox and said, “Dear friend, I have always liked you because you are intelligent and clever. I want to appoint you as my minister and advise me on all the affairs of the forest”.The old lion also asked the fox, that he was the king of the forest; so he should not have to hunt for his food. In respect to this, the fox’s first duty as minister was to bring him an animal to eat everyday.\n      The fox didn’t trust the lion, but he could not even refuse the king. The fox said, “Your Majesty, I am happy, that you have chosen me to serve you. I accept your offer”. The lion was pleased to hear such words. After the conversation, the fox went out to find an animal for the lion. On the way, he met a fat ass. The fox went to the ass, “Friend, where have you been all these days? I have been looking for you for the past many days”.\n     The ass asked, “Why? What happened? Is everything alright?” The fox replied, “I have got good news for you. You are very lucky. Our king, the lion has chosen you to be his chief minister. He asked me to meet you and inform you about his decision.” Ass was scared of the lion and said, “I am afraid of the lion. He might kill me and eat me up. Why has he chosen me as his chief minister? I don’t even fit enough to be a minister. “\n      The clever fox laughed and said, “Dear, you don’t know your great qualities. You have a special charm of your own. Our king is dying to meet you. He has chosen you because you are wise, gentle, and hard working. You must not lose your greatest chance in life. Now, come with me and meet our great king. He will be really happy to see you”. So, the poor ass was convinced and got ready to go along with the fox.\n      As soon as they reached the lion’s den, the ass got scared and refused to move forward. At this, the fox said to the lion, “Your majesty, the chief minister appears to be very shy and hesitates to come near you”. The lion himself came forward and said, “I like such modesty”. He limped towards the ass. The ass got so scared that he ran to save his life. The lion became angry and shouted at the fox, “You have played a trick on me. I was so hungry that I wanted to eat him at once. Go and bring that ass back. If you don’t, I will kill you.\n     ”The fox replied,” Your Majesty, you were in a hurry. You should have left it to me, to bring him near enough. But I will try again”. The fox went back to the ass and said, “You are a funny fellow. Why did you run away like that?” The ass replied, “I was too scared. I thought that the lion was going to kill me”.\n     The fox said, “What a fool you are? If the king wanted to kill you, he would have done so. You could not have escaped by running away. The thing is, the king wanted to tell you a secret about the kingdom and he did not want me, to hear it. Now, what will he think about you?Doesn’t matter, Come with me and apologize for your mistake. You don’t realize that by serving the king, you will be the second most powerful animal of our forest. Imagine, all the other animals will respect you and seek favors from you.”\n     In this way, the fox managed to attract the ass to go back to the lion. When the fox and the ass approached, the lion was hungrier than ever. But this time he kept a smiling face and said, “Welcome, my dear friend. It was unkind of you to have run away like that. Come near me. You are my chief minister.” As and when the ass came closer, the lion pounced on him and killed him instantly. The lion thanked the clever fox and was happy to get the food.\n      As the lion sat down to take his meal, the fox said, “Your Majesty, I know you are very hungry and it is time for your dinner, but the king must take a bath before his meal”. The lion thought it was a good idea and said, “You are right. I should go and bathe first. You keep a watch on the carcass of the ass”.\n      The fox silently sat down to keep a watch of the ass. He was very hungry and thought to himself, “I took all the trouble of getting the ass here. It is I who deserve the best portion of the meal”. Thus, the fox cut open the head of the ass and ate up the whole brain. When the lion returned and looked at the ass, he felt that something was missing. He found that the head of the ass had been cut open. He inquired from the fox, “Who came here? What happened to the head of the ass?”\n     The fox pretended to be innocent and reminded the lion, “Your Majesty, You have given a powerful blow on the head of the ass when you killed him”. The lion was satisfied with the answer and sat down to take his meal. Suddenly, he shouted,” What happened to the ass’ brain? I wanted to eat the brain first”. The fox smilingly replied, “Your Majesty, Asses have no brains. If this had any, he would not have come here a second time”.',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ),
        const SizedBox(height: 20),
      ]),
    );
  }
}
