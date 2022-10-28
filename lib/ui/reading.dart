import 'package:flutter/material.dart';

import 'package:text_to_speech/text_to_speech.dart';

class Cards extends StatefulWidget {
  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class Reading extends StatefulWidget {
  const Reading({super.key});

  @override
  State<Reading> createState() => _ReadingState();
}

class _ReadingState extends State<Reading> {
  PageController pageController = PageController(initialPage: 0);

  int pageChanged = 0;
  TextToSpeech tts = TextToSpeech();
  final TextEditingController _controller = TextEditingController();
  final List = [
    'The dog started barking so the cat ran away and I couldn’t keep up, so I stopped.',
    'The sun is shining through the clouds, so I think that we can go swimming.',
    'I add cream to my coffee because the bitter taste makes me feel unwell.',
    'Mary and Samantha arrived at the bus station early but waited until noon for the bus.',
    'The pizza was delivered on time, but the delivery boy left before I reached.',
    'He bought a new car yet he is coming to the office by bus.',
    'The good minister looked at the picture for a long time.',
    'Many years later, as he faced the firing squad, Colonel Aurelian was to remember that distant afternoon when his father took him to discover ice.',
    'Even though she was tired, Abby knew she had to finish the race and she ran to meet her team.',
    'Their plots were failing because of some trusted friends of the king.',
    'Yesterday was a sunny day, so we thought we would go swimming in the pool but entry was full in Water Park then we decided to visit the zoo.',
    'I quickly put on my red winter jacket, black snow pants, waterproof boots, homemade mittens, and handknit scarf.',
    'It\'s my friend\'s birthday soon, so I\'ll get them a present.',
    'A long hallway ran across the back of the upstairs, leading to four bedrooms.',
    'The student who sits in the back of the room asks a lot of questions.',
    'I passed the test, but I would have gotten a perfect score if I had studied for the vocabulary section.',
    'There was heavy traffic in the neighborhood, so I used the GPS to find a quicker route, and was able to get there on time.',
    'The cat ran away, but nobody was worried because he was trained to find his home.',
    'I will get to watch television, but first, I have to clean up the dishes after we finish eating.',
    'After our trip to the beach, school started back, and I was excited to see my friends.',
    'Since she was a vegetarian, she refused to eat the turkey, but she was more than happy to eat the potatoes.',
  ];
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
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Theme.of(context).buttonColor,
            )),
        title: Text(
          'Reading',
          style: TextStyle(
            color: Theme.of(context).buttonColor,
          ),
        ),
      ),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).buttonColor,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 10,
              ),
              child: TextFormField(
                controller: _controller,
                decoration: const InputDecoration(
                  alignLabelWithHint: true,
                  hintText: 'Write a sentence here ',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () async {
              String text = _controller.text;
              tts.speak(text);
              tts.setRate(.9);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 100),
              height: 50,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),

                    spreadRadius: 2,

                    blurRadius: 2,

                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Press to Read',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.45,
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    pageChanged = index;
                  });
                },
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'The dog started barking so the cat ran away and I couldn’t keep up, so I stopped.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'The sun is shining through the clouds, so I think that we can go swimming.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'I add cream to my coffee because the bitter taste makes me feel unwell.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'Mary and Samantha arrived at the bus station early but waited until noon for the bus.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'The pizza was delivered on time, but the delivery boy left before I reached.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'He bought a new car yet he is coming to the office by bus.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'The good minister looked at the picture for a long time.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'Many years later, as he faced the firing squad, Colonel Aurelian was to remember that distant afternoon when his father took him to discover ice.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'Even though she was tired, Abby knew she had to finish the race and she ran to meet her team.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'Their plots were failing because of some trusted friends of the king.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'Yesterday was a sunny day, so we thought we would go swimming in the pool but entry was full in Water Park then we decided to visit the zoo.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'I quickly put on my red winter jacket, black snow pants, waterproof boots, homemade mittens, and handknit scarf.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'It\'s my friend\'s birthday soon, so I\'ll get them a present.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'A long hallway ran across the back of the upstairs, leading to four bedrooms.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'The student who sits in the back of the room asks a lot of questions.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'I passed the test, but I would have gotten a perfect score if I had studied for the vocabulary section.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'There was heavy traffic in the neighborhood, so I used the GPS to find a quicker route, and was able to get there on time.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'The cat ran away, but nobody was worried because he was trained to find his home.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'I will get to watch television, but first, I have to clean up the dishes after we finish eating.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'After our trip to the beach, school started back, and I was excited to see my friends.'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: TextWidget(
                            text:
                                'Since she was a vegetarian, she refused to eat the turkey, but she was more than happy to eat the potatoes.'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                GestureDetector(
                  onTap: (() {
                    pageController.animateToPage(--pageChanged,
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.bounceInOut);
                  }),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Center(
                      child: Text(
                        '👈',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: (() {
                    pageController.animateToPage(pageChanged++,
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.bounceInOut);
                  }),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Center(
                      child: Text(
                        '👉',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TextWidget extends StatefulWidget {
  final String text;
  const TextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  TextToSpeech tts = TextToSpeech();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        String text = widget.text;
        tts.speak(text);
        tts.setRate(.9);
      },
      child: Container(
        height: 290,
        width: MediaQuery.of(context).size.width * 0.7,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // color: Colors.black.withOpacity(.1),
        ),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              children: [
                Image.asset(
                  'assets/quote1.png',
                  height: 30,
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                widget.text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  // color: Theme.of(context).buttonColor,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [
                const Spacer(),
                Image.asset(
                  'assets/quote.png',
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
