import 'package:flutter/material.dart';
import 'package:kidszoo/consts/app_colors.dart';
import 'package:text_to_speech/text_to_speech.dart';

class Vocab extends StatelessWidget {
  const Vocab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      extendBodyBehindAppBar: true,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            // margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
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
                const Text(
                  'Match the correct\nAlphabet Letter by\nPlacing it on the\nscreen',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  'A',
                  style: TextStyle(fontSize: 90, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'A = AXE',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'E',
                  style: TextStyle(fontSize: 90, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'E = EGG',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
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
                children: const [
                  SizedBox(width: 5),
                  TextWidget(text: 'A'),
                  SizedBox(width: 5),
                  TextWidget(text: 'B'),
                  SizedBox(width: 5),
                  TextWidget(text: 'C'),
                  SizedBox(width: 5),
                  TextWidget(text: 'D'),
                  SizedBox(width: 5),
                  TextWidget(text: 'E'),
                  SizedBox(width: 5),
                  TextWidget(text: 'F'),
                  SizedBox(width: 5),
                  TextWidget(text: 'G'),
                  SizedBox(width: 5),
                  TextWidget(text: 'H'),
                  SizedBox(width: 5),
                  TextWidget(text: 'I'),
                  SizedBox(width: 10),
                  TextWidget(text: 'J'),
                  SizedBox(width: 10),
                  TextWidget(text: 'K'),
                  SizedBox(width: 5),
                  TextWidget(text: 'L'),
                  SizedBox(width: 5),
                  TextWidget(text: 'M'),
                  SizedBox(width: 5),
                  TextWidget(text: 'N'),
                  SizedBox(width: 5),
                  TextWidget(text: 'O'),
                  SizedBox(width: 5),
                  TextWidget(text: 'P'),
                  SizedBox(width: 5),
                  TextWidget(text: 'Q'),
                  SizedBox(width: 5),
                  TextWidget(text: 'R'),
                  SizedBox(width: 5),
                  TextWidget(text: 'S'),
                  SizedBox(width: 5),
                  TextWidget(text: 'T'),
                  SizedBox(width: 5),
                  TextWidget(text: 'U'),
                  SizedBox(width: 5),
                  TextWidget(text: 'V'),
                  SizedBox(width: 5),
                  TextWidget(text: 'W'),
                  SizedBox(width: 5),
                  TextWidget(text: 'X'),
                  SizedBox(width: 5),
                  TextWidget(text: 'Y'),
                  SizedBox(width: 5),
                  TextWidget(text: 'Z'),
                ],
              ),
            ),
          )
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
        style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
      ),
    );
  }
}
