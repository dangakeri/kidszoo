import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:text_to_speech/text_to_speech.dart';

class Shapes extends StatelessWidget {
  const Shapes({super.key});

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
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Theme.of(context).splashColor,
          ),
        ),
        title: Text(
          'Shapes',
          style: TextStyle(
            color: Theme.of(context).splashColor,
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        // shrinkWrap: true,
        children: [
          const Row(
            children: [],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
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
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.8,
                    children: [
                      Shape(
                        title: 'Triangle',
                        callBack: () {},
                        image: Image.asset(
                          'assets/triangle.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Shape(
                        title: 'Circle',
                        callBack: () {},
                        image: Image.asset(
                          'assets/circle.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Shape(
                        title: 'Square',
                        callBack: () {},
                        image: Image.asset(
                          'assets/square.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Shape(
                        title: 'Rectangle',
                        callBack: () {},
                        image: Image.asset(
                          'assets/rectangle.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Shape(
                        title: 'Oval',
                        callBack: () {},
                        image: Image.asset(
                          'assets/oval.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Shape(
                        title: 'Star',
                        callBack: () {},
                        image: Image.asset(
                          'assets/star.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Shape(
                        title: 'Polygon',
                        callBack: () {},
                        image: Image.asset(
                          'assets/polygon.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Shape(
                        title: 'Kite',
                        callBack: () {},
                        image: Image.asset(
                          'assets/kite.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Shape(
                        title: 'Rhombus',
                        callBack: () {},
                        image: Image.asset(
                          'assets/rhombus.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Shape(
                        title: 'Heart',
                        callBack: () {},
                        image: Image.asset(
                          'assets/love.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Shape(
                        title: 'Cresent',
                        callBack: () {},
                        image: Image.asset(
                          'assets/cresent.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Shape(
                        title: 'parallelogram',
                        callBack: () {},
                        image: Image.asset(
                          'assets/parallelogram.png',
                          height: 100,
                          width: 100,
                        ),
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

class Shape extends StatefulWidget {
  final Image image;
  final String title;

  final VoidCallback callBack;

  Shape({
    Key? key,
    required this.title,
    required this.callBack,
    required this.image,
  }) : super(key: key);

  @override
  State<Shape> createState() => _ShapeState();
}

class _ShapeState extends State<Shape> {
  TextToSpeech tts = TextToSpeech();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        String title = widget.title;
        tts.speak(title);
      },
      child: Stack(
        children: [
          Container(
            height: 190,
            width: 300,
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
                const SizedBox(
                  height: 40,
                ),
                widget.image,
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const Positioned(
            child: Icon(CupertinoIcons.volume_up),
            top: 10,
            right: 10,
          )
        ],
      ),
    );
  }
}
