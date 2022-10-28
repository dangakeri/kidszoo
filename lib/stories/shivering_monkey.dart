import 'package:flutter/material.dart';

import '../consts/app_colors.dart';

class ShiveringMonkey extends StatelessWidget {
  const ShiveringMonkey({super.key});

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
          'The Birds and the Shivering Monkeys',
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
              'assets/Birds and monkeys.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '     Once upon a time, there was a huge tree on the banks of a river. The tree made a comfortable home for the family of birds who had built their nests on its branch. The birds were living there happily as the tree with its widespread branches sheltered them from scorching sun and heavy rains. \n     One day, when the sky was overcast with dark clouds, it rained very heavily. Some monkeys who were playing nearby the tree got drenched and ran for shelter under the tree. All of them were shivering with cold. When the birds saw the monkeys in the pitiable condition, one of the birds said,” O Monkeys, you would not have to shiver like this, if you had built a home like us. You would not have to suffer like this. If we can build our nest with small beaks, then why cant you. By God’s grace, you have two hands and two legs. Why don’t you make a nice shelter for yourselves?”\n     On hearing this, the monkeys got annoyed and swore to teach a lesson to the birds. They said to themselves, “These birds are not afraid of the rain or of cold wind. They are living comfortably that is why they are criticizing us like this. Let the rain stops, we’ll show them how to build home”. As soon as the rain stopped, the monkeys climbed up the tree and destroyed the nests of the birds. They also broke the birds’ eggs and threw the young ones down. \n      The poor birds flew here and there in misery. They were full of regret for their words and realized that they should not have given advice that was not asked. Advice should only be given to learned, wise and to those who ask for it.',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Moral: Never give advice to fools',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(height: 20),
      ]),
    );
  }
}
