import 'package:flutter/material.dart';
import 'package:kidszoo/consts/app_colors.dart';
import 'package:text_to_speech/text_to_speech.dart';

class Vocab extends StatefulWidget {
  const Vocab({super.key});

  @override
  State<Vocab> createState() => _VocabState();
}

class _VocabState extends State<Vocab> {
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
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            // margin: EdgeInsets.symmetric(horizontal: 20),
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
                  height: 30,
                ),
                Text(
                  'Match the correct\nAlphabet Letter by\nPlacing it on the\nscreen',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).buttonColor,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  activeLetter,
                  style: TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).buttonColor,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  activeLetterContent,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).buttonColor,
                  ),
                ),
                const SizedBox(
                  height: 50,
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
              child: Wrap(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activeLetter = 'A';
                        activeLetterContent = 'A = AXE';
                      });
                      String text = '$activeLetter, for Axe';
                      tts.setRate(.9);
                      tts.speak(text);
                    },
                    child: Text(
                      'A',
                      style: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  // TextWidget(text: 'A'),
                  const SizedBox(width: 5),
                  const TextWidget(text: 'B'),
                  const SizedBox(width: 5),
                  const TextWidget(text: 'C'),
                  const SizedBox(width: 10),
                  const TextWidget(text: 'D'),
                  const SizedBox(width: 10),
                  const TextWidget(text: 'E'),
                  const SizedBox(width: 10),
                  const TextWidget(text: 'F'),
                  const SizedBox(width: 10),
                  const TextWidget(text: 'G'),
                  const SizedBox(width: 10),
                  const TextWidget(text: 'H'),
                  const SizedBox(width: 10),
                  const TextWidget(text: 'I'),
                  const SizedBox(width: 10),
                  const TextWidget(text: 'J'),
                  const SizedBox(width: 10),
                  const TextWidget(text: 'K'),
                  const SizedBox(width: 5),
                  const TextWidget(text: 'L'),
                  const SizedBox(width: 10),
                  const TextWidget(text: 'M'),
                  const SizedBox(width: 10),
                  const TextWidget(text: 'N'),
                  const SizedBox(width: 5),
                  const TextWidget(text: 'O'),
                  const SizedBox(width: 5),
                  const TextWidget(text: 'P'),
                  const SizedBox(width: 5),
                  const TextWidget(text: 'Q'),
                  const SizedBox(width: 5),
                  const TextWidget(text: 'R'),
                  const SizedBox(width: 5),
                  const TextWidget(text: 'S'),
                  const SizedBox(width: 5),
                  const TextWidget(text: 'T'),
                  const SizedBox(width: 5),
                  const TextWidget(text: 'U'),
                  const SizedBox(width: 5),
                  const TextWidget(text: 'V'),
                  const SizedBox(width: 5),
                  const TextWidget(text: 'W'),
                  const SizedBox(width: 5),
                  const TextWidget(text: 'X'),
                  const SizedBox(width: 5),
                  const TextWidget(text: 'Y'),
                  const SizedBox(width: 5),
                  const TextWidget(text: 'Z'),
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
        style: TextStyle(
          fontSize: 43,
          fontWeight: FontWeight.w900,
          color: Colors.black,
        ),
      ),
    );
  }
}
