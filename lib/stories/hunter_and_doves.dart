import 'package:flutter/material.dart';
import 'package:kidszoo/consts/app_colors.dart';

class Hunter extends StatelessWidget {
  const Hunter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        centerTitle: true,
        elevation: 0,
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
          'Hunter and the doves',
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
              'assets/hunter.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '      Once upon a time, there was a flock of doves that flew in search of food. This flock was led by their king. Once, it happened as such that the flock had flown a long distance and all the doves got tired. The king of doves encouraged the doves to fly a little more. One of the doves picked up pace and found some rice grains scattered under a banyan tree. \n     All the doves were happy to find the food and happily landed on the ground. As soon as they began to eat the grains, a huge net fall over them and all of them got trapped. The doves fluttered their wings desperately trying to come out, but it was of no avail. Just then, they saw the hunter coming towards them. He appeared quite happy to find a huge number of doves trapped inside the net. The whole lock was frightened on seeing the fowler. \n     However, the king of doves was very intelligent and clever. He didn’t loose his patience and devised a plan to come out from this adverse situation. He advised to other doves,” In order to get free from the net of this hunter, we should all fly up together clutching the net in our beaks. There is strength in unity. We will decide our next course of action later. Now, come on and let’s fly.”\n     Hearing to the king, each dove picked up a portion of the huge net and they flew up together, carrying the net with them. The hunter was surprised to see the birds flying, along with the huge net. He ran after the birds, shouting madly, but could not catch them. Soon, they flew high over hills and valleys getting out of his sight.\n      When the king dove saw that the hunter had given up the chase, he said to his friends, "Now we all have to get out of this net. A mouse lives on the nearby hill. He is good friend of mine. Let\'s go to him for his help." They flew to a hill near a city of temples where the mouse lived.\n      When the mouse heard the loud noise of doves’ approach, he got frightened and hid himself deeper into his hole. The King dove asked, “Dear friend, I have come, the king dove. We’re in great difficulty. Please come out and help us.” Hearing the voice of the king dove, the mouse came out of his hole and saw the king dove and his friends trapped in the net. The mouse said,” Oh! Who’s done all this to you? “\n      The king dove explained the whole story to the mouse. He told him that they require mouse’s help to nibble the net and set them free. The mouse immediately started nibbling the net around the king dove. The king dove said,” No, dear. First set my followers free. A king cannot keep his subjects in pain and enjoy the freedom for himself." \n       The mouse understood the king’s feelings and praised the king for his nobleness. As per the king’s wish, the mouse nibbled at the portion of the net and one by one all the doves got freed including the king dove. All the doves were happy to get free. They thanked the mouse for his effort and flew away together happily to their destination.',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Moral: Strength lies in unity',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(height: 20),
      ]),
    );
  }
}
