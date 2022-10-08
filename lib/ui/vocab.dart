import 'package:flutter/material.dart';
import 'package:kidszoo/consts/app_colors.dart';

class Vocab extends StatelessWidget {
  const Vocab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            // margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: const [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Letters',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Match the correct\nAlphabet Letter by\nPlacing it on the\nscreen',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  'A',
                  style: TextStyle(fontSize: 90, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'A = AXE',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'E',
                  style: TextStyle(fontSize: 90, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'E = EGG',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 10),
              height: MediaQuery.of(context).size.height * 1,
              color: Colors.white,
              child: Wrap(
                children: const [
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
          ),
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
    );
  }
}
