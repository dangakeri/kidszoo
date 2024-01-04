import 'package:flutter/material.dart';
import 'package:text_to_speech/text_to_speech.dart';

class Vocab extends StatefulWidget {
  const Vocab({super.key});

  @override
  State<Vocab> createState() => _VocabState();
}

class _VocabState extends State<Vocab> {
  // late Image activeImageContent;
  String activeImage = '';
  String activeLetter = '';
  String activeLetterContent = '';
  TextToSpeech tts = TextToSpeech();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: true,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.70,
            child: Column(
              children: [
                const SizedBox(height: 30),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new)),
                  ],
                ),
                const Text(
                  'Letters',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Match the correct\nAlphabet by pressing\nletters on the right',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).splashColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                // activeImage,
                activeLetter == ''
                    ? const SizedBox()
                    : Image.asset(
                        'assets/${activeLetter.toLowerCase()}.png',
                        height: 150,
                      ),
                // Text(
                //   activeLetter,
                //   style: TextStyle(
                //     fontSize: 90,
                //     fontWeight: FontWeight.bold,
                //     color: Theme.of(context).splashColor,
                //   ),
                // ),
                const SizedBox(height: 80),
                activeLetter == ''
                    ? const SizedBox()
                    : Image.asset(
                        'assets/$activeImage',
                        height: 150,
                      ),

                // activeImageContent,
                SizedBox(
                  height: 50,
                ),
                Text(
                  activeLetterContent,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).splashColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Container(
              padding: const EdgeInsets.only(top: 20, left: 10),
              height: MediaQuery.of(context).size.height * 1,
              color: Colors.white,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Wrap(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'apple.png';

                            activeLetter = 'A';
                            activeLetterContent = 'Apple';
                          });
                          String text = '$activeLetter, for Apple';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'A',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'boy.png';
                            activeLetter = 'B';
                            activeLetterContent = 'Boy';
                          });
                          String text = '$activeLetter, for Boy';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'B',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'cat.png';
                            activeLetter = 'C';
                            activeLetterContent = 'Cat';
                          });
                          String text = '$activeLetter, for Cat';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'C',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'dog.png';
                            activeLetter = 'D';
                            activeLetterContent = 'Dog';
                          });
                          String text = '$activeLetter, for Dog';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'D',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'elephant.png';
                            activeLetter = 'E';
                            activeLetterContent = 'Elephant';
                          });
                          String text = '$activeLetter, for Elephant';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'E',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'fox.png';
                            activeLetter = 'F';
                            activeLetterContent = 'Fox';
                          });
                          String text = '$activeLetter, for Fox';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'F',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'girrafe.png';
                            activeLetter = 'G';
                            activeLetterContent = 'Girrafe';
                          });
                          String text = '$activeLetter, for Girrafe';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'G',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'hen.png';
                            activeLetter = 'H';
                            activeLetterContent = 'Hen';
                          });
                          String text = '$activeLetter, for Hen';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'H',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'ice.png';
                            activeLetter = 'I';
                            activeLetterContent = 'Ice';
                          });
                          String text = '$activeLetter, for Ice';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'I',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 25),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'jellyfish.png';
                            activeLetter = 'J';
                            activeLetterContent = 'Jellyfish';
                          });
                          String text = '$activeLetter, for Jellyfish';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'J',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'kangaroo.png';
                            activeLetter = 'K';
                            activeLetterContent = 'Kangaroo';
                          });
                          String text = '$activeLetter, for Kangaroo';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'K',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeLetter = 'L';
                            activeImage = 'lion.png';
                            activeLetterContent = 'Lion';
                          });
                          String text = '$activeLetter, for Lion';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'L',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'monkey.png';
                            activeLetter = 'M';
                            activeLetterContent = 'Monkey';
                          });
                          String text = '$activeLetter, for Monkey';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'M',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'nest.png';
                            activeLetter = 'N';
                            activeLetterContent = 'Nest';
                          });
                          String text = '$activeLetter, for Nest';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'N',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'ostrich.png';
                            activeLetter = 'O';
                            activeLetterContent = 'Ostrich';
                          });
                          String text = '$activeLetter, for Ostrich';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'O',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'pig.png';
                            activeLetter = 'P';
                            activeLetterContent = 'Pig';
                          });
                          String text = '$activeLetter, for Pig';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'P',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'queen.png';
                            activeLetter = 'Q';
                            activeLetterContent = 'Queen';
                          });
                          String text = '$activeLetter, for Queen';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'Q',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'rat.png';
                            activeLetter = 'R';
                            activeLetterContent = 'Rat';
                          });
                          String text = '$activeLetter, for Rat';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'R',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'sun.png';
                            activeLetter = 'S';
                            activeLetterContent = 'Sun';
                          });
                          String text = '$activeLetter, for Sun';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'S',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'tiger.png';
                            activeLetter = 'T';
                            activeLetterContent = 'Tiger';
                          });
                          String text = '$activeLetter, for Tiger';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'T',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'umbrella.png';
                            activeLetter = 'U';
                            activeLetterContent = 'Umbrella';
                          });
                          String text = '$activeLetter, for Umbrella';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'U',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'van.png';
                            activeImage = 'van.png';
                            activeLetter = 'V';
                            activeLetterContent = 'Van';
                          });
                          String text = '$activeLetter, for Van';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'V',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'whale.png';
                            activeLetter = 'W';
                            activeLetterContent = 'Whale';
                          });
                          String text = '$activeLetter, for Whale';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'W',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'x-mas.png';
                            activeLetter = 'X';
                            activeLetterContent = 'X-mas';
                          });
                          String text = '$activeLetter, for X-mas';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'X',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'yatch.png';
                            activeLetter = 'Y';
                            activeLetterContent = 'Yatch';
                          });
                          String text = '$activeLetter, for Yatch';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'Y',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            activeImage = 'zebra.png';
                            activeLetter = 'Z';
                            activeLetterContent = 'Zebra';
                          });
                          String text = '$activeLetter, for Zebra';
                          tts.setRate(.9);
                          tts.speak(text);
                        },
                        child: const Text(
                          'Z',
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
      },
      child: Text(
        widget.text,
        style: const TextStyle(
          fontSize: 43,
          fontWeight: FontWeight.w900,
          color: Colors.black,
        ),
      ),
    );
  }
}
