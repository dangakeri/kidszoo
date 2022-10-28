import 'package:flutter/material.dart';
import 'package:kidszoo/consts/app_colors.dart';

class Talkative extends StatelessWidget {
  const Talkative({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        centerTitle: true,
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
          'Talkative Tortoise',
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
              'assets/Talkative Tortoise.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            ' Once upon a time, there was a tortoise by the name of Kambugriva and two geese by the name of Sankata and Vikata. The tortoise lived in a pond and he made friends with two geese who used to come and visit him at the pond. All of them were happy for the past many years.\n      Once they faced a drought that lasted for several months. Due to this, all the rivers, lakes and ponds went dry. There was not a drop of water to drink for the birds and the animals. They began to die of thirst and scorching heat. Many of them decided to migrate to some fertile lands. \n        The three friends also decided to leave the pond and to go to some distant lake, full of water, to settle down there for ever. But it was quite difficult to shift at a distant place. Although, was quite easy for the geese as they could fly but the problem was for tortoise. The poor tortoise could not fly and to cover that distance on foot was really difficult.\n      All of them had a conversation, as to what could be a possible solution for this problem. The geese suggested a plan, according to which, tortoise would have to hold a piece of stick by his mouth and which would be carried slowly while holding its two ends by them. The only condition was that the tortoise should not speak; otherwise he would fall and die spontaneously. The geese were worried because they knew that tortoise was very talkative and it was difficult for him to keep his mouth shut. The tortoise got the logic and promised not to open his mouth during the entire journey.\n     Before starting their journey, the geese again cautioned their friend not to open his mouth in any case. With this instruction, the geese held the stick ends in their beaks and the tortoise held the stick in the middle with his teeth. Thus, they started their journey. They flew higher and higher, over hills, valleys, fields and plains. Ultimately, they flew over a town. \n     The people of the town were surprised to see such a strange scene. They started laughing and clapping, to see the geese carrying tortoise like that. The people’s shouting and laughing annoyed the tortoise. He thought why these people were making such a noise. Unable to control his anxiety, he opened his mouth to speak. But as soon as he opened his mouth, he lost his grip on the stick and fell to his death. So, the poor tortoise got killed because of his stupidity and impatience.',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Moral: Always listen to friendly advices',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(height: 20),
      ]),
    );
  }
}
