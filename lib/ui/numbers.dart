import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_to_speech/text_to_speech.dart';

import '../consts/app_colors.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

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
          ),
        ),
        title: Text(
          'Numbers',
          style: TextStyle(
            color: Theme.of(context).buttonColor,
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.85,
                  width: double.infinity,
                  child: GridView.count(
                    physics: const BouncingScrollPhysics(),
                    mainAxisSpacing: 15,
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.8,
                    children: [
                      Digits(
                        image: Image.asset(
                          'assets/0.png',
                          height: 70,
                          width: 50,
                        ),
                        subtitle: 'Zero',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/1.png',
                          height: 70,
                          width: 50,
                        ),
                        subtitle: 'One',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/2.png',
                          height: 70,
                          width: 50,
                        ),
                        subtitle: 'Two',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/3.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Three',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/4.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Four',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/5.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Five',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/6.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Six',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/7.png',
                          height: 75,
                          width: 75,
                        ),
                        subtitle: 'Seven',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/8.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Eight',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/9.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Nine',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/10.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Ten',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/11.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Eleven',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/12.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Twelve',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/13.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Thirteen',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/14.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Fourteen',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/15.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Fifteen',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/16.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Sixteen',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/17.png',
                          height: 70,
                          width: 80,
                        ),
                        subtitle: 'Seventeen',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/18.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Eighteen',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/19.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Nineteen',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/20.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Twenty',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/21.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Twenty One',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/22.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Twenty Two',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/23.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Twenty Three',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/24.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Twenty Four',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/25.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Twenty Five',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/26.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Twenty Six',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/27.png',
                          height: 75,
                          width: 75,
                        ),
                        subtitle: 'Twenty Seven',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/28.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Twenty Eight',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/29.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Twenty Nine',
                      ),
                      Digits(
                        image: Image.asset(
                          'assets/30.png',
                          height: 70,
                          width: 70,
                        ),
                        subtitle: 'Thirty',
                      ),
                    ],
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

class Digits extends StatefulWidget {
  final Image image;
  final String subtitle;

  const Digits({
    Key? key,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  State<Digits> createState() => _DigitsState();
}

class _DigitsState extends State<Digits> {
  TextToSpeech tts = TextToSpeech();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        String text = widget.subtitle;
        tts.setRate(.9);
        tts.speak(text);
      },
      child: Stack(children: [
        Container(
          height: 140,
          width: 140,
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),

                  spreadRadius: 2,

                  blurRadius: 2,

                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ]),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: widget.image,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  widget.subtitle,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          child: Icon(
            CupertinoIcons.volume_up,
            size: 15,
          ),
          top: 10,
          right: 10,
        )
      ]),
    );
  }
}
