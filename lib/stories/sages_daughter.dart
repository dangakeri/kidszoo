import 'package:flutter/material.dart';

import '../consts/app_colors.dart';

class SagesDaughter extends StatelessWidget {
  const SagesDaughter({super.key});

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
          'The Sage’s Daughter',
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
              'assets/sages daughter.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '     Once upon a time, there lived a Sage on the banks of a river. The sage and his wife didn’t bear any children. They were unhappy about this fact of their life. \n     One day, when the sage was engaged in penance, a kite dropped a she-mouse and it happened to fall in the lap of the Sage. The Sage thought that the God might have sent this mouse to him. He thought that if he would take the mouse to his home, people would laugh at him. So he decided to change the mouse into a girl. \n     The Sage brought the girl to his home. On seeing the Girl, the Sage’s wife asked, “Who is she? From where did you bring this girl?” The Sage narrated to her the whole story and said, “I would bring her back to her original form”. The Sage’s wife stopped him instantly and said, “I beg of you. Please don’t change her into a mouse. You have given her life so you have become her father. Since you are her father, I am her mother. God must have sent her to us because we don’t bear any children”.\n      The Sage accepted the request of his wife. They started bringing up the Girl child as their own daughter. Soon the Girl grew into a beautiful maiden. By the age of sixteen, the Sage’s wife decided to get her daughter married. She asked her husband to find a suitable match for their daughter. The Sage liked the idea and suggested that the Sun God would make the best match for their daughter. The wife agreed upon this and the Sage prayed to the Sun God to appear. When the Sun God appeared, the Sage asked him to marry his daughter.\n      But the Girl refused the idea and said, “Sorry! I can’t marry the Sun God as he is burning hot. I will be reduced to ashes in his warmth and light”. The Sage got disappointed to hear this from the Girl. He asked the Sun God if he could suggest a groom for his daughter. The Sun God said, “The Lord of Clouds could make a good match for her, as he is the only one, who can easily stop the rays of the Sun”.\n     The Sage then prayed to the Lord of Clouds to appear and asked him to marry his daughter. But the Girl once again rejected the proposal and said, “I don’t want to marry a dark person like him. Besides this, I am terrified of the thunder he generates”. The Sage was disheartened once again and asked the Lord of Clouds if he could suggest a possible groom. The Lord of Clouds said, “Wind God can make a possible match for her as he can easily blow me away”.\n      The Sage then prayed to the Wind God to appear and asked him to marry his daughter. The Daughter declined the idea and said, “I can’t marry a frail person like the Wind God who is always stirring”. Once again the sage got sad and asked the Wind God to give some suggestion. The Wind God replied, “Lord of Mountain is solid and can stop the hard blows of wind easily. He can make a suitable match for your daughter”.',
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
