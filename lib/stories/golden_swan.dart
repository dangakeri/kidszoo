import 'package:flutter/material.dart';
import 'package:kidszoo/consts/app_colors.dart';

class Golden extends StatelessWidget {
  const Golden({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: true,
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
          'Golden Swan',
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
              'assets/golden swan.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '      Once upon a time, there was a swan / goose that had striking golden feathers. This swan lived in a pond. There was a house near this pond, where a poor woman lived with her two daughters. The people were really poor and were leading a tough life. The swan found that the poor mother was passing a hard time with her daughters.\n      The swan thought, “If I give them one after another my golden feathers, the mother can sell them. She and her daughters can live in comfort with the money raised from it”. After thinking this, the swan flew away to the poor woman’s house. On seeing the swan inside the house, the woman said,” Why have you come here? We have nothing to offer you”.\n     The Swan replied, “I have not come to take anything, but I have something to give you. I know your condition. I will give my golden feathers one by one and you can sell them. With the money raised through it, you people can easily live in comfort”. After saying this, the swan shed one of her feathers and then flew away. This became a regular feature and from time to time, the swan came back and every time left another feather.\n      Like this, the mother and her daughters were happily leading their life by selling the feathers of the golden swan. Each golden feather got them enough money to keep them in comfort. But the mother became greedy to get all the feathers as soon as possible. One day, she said to her daughters, “Now, we will not trust this swan, possibly she may fly away and never come back. If this would happen, we will be poor again. We will take all of her feathers, when she will come the next time”.\n      The innocent daughters replied, “Mother, this will hurt the swan. We will not cause any pain to her”. But the mother was determined to catch hold the swan the very next time she comes. Next time, when the swan came, the mother caught her and pulled out all of her feathers. Now, the golden feathers of the swan changed into some strange feathers. The mother was shocked to see such feathers.\n     The Golden Swan said, “Poor Mother, I wanted to help you, but you wanted to kill me instead. As per my wish, I used to give you the golden feather. Now, I think there is no need to help you. Now, my feathers are nothing more than chicken feathers for you. I am going from this place and will never come back”. The mother felt sorry and apologized for the mistake committed by her. The Golden Swan said, “Never be greedy” and flew away.',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Moral: Excess greed brings nothing',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(height: 20),
      ]),
    );
  }
}
