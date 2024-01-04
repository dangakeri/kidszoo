import 'package:flutter/material.dart';
import 'package:kidszoo/stories/stories.dart';
import 'package:kidszoo/stories/stories_details.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Theme.of(context).splashColor,
          ),
        ),
        title: Text(
          'Stories',
          style: TextStyle(
            color: Theme.of(context).splashColor,
          ),
        ),
      ),
      body: ListView(
        // physics: const BouncingScrollPhysics(),
        // shrinkWrap: true,
        children: [
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
                    mainAxisSpacing: 15,
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.8,
                    children: [
                      StoriesTileWidget(
                        // title: 'Ass has no brain',
                        title: stories[0]["title"],
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      StoriesDetailsPage(
                                        title: stories[0]["title"],
                                        imagePath: stories[0]["imagePath"],
                                        story: stories[0]["story"],
                                        lesson: stories[0]["lesson"],
                                      )));
                        },
                        image: Image.asset(
                          stories[0]["imagePath"],
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: stories[1]["title"],
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      StoriesDetailsPage(
                                        title: stories[1]["title"],
                                        imagePath: stories[1]["imagePath"],
                                        story: stories[1]["story"],
                                        lesson: stories[1]["lesson"],
                                      )));
                        },
                        image: Image.asset(
                          stories[1]["imagePath"],
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: stories[2]["title"],
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      StoriesDetailsPage(
                                        title: stories[2]["title"],
                                        imagePath: stories[2]["imagePath"],
                                        story: stories[2]["story"],
                                        lesson: stories[2]["lesson"],
                                      )));
                        },
                        image: Image.asset(
                          stories[2]["imagePath"],
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: stories[3]["title"],
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      StoriesDetailsPage(
                                        title: stories[3]["title"],
                                        imagePath: stories[3]["imagePath"],
                                        story: stories[3]["story"],
                                        lesson: stories[3]["lesson"],
                                      )));
                        },
                        image: Image.asset(
                          stories[3]["imagePath"],
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: stories[4]["title"],
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      StoriesDetailsPage(
                                        title: stories[4]["title"],
                                        imagePath: stories[4]["imagePath"],
                                        story: stories[4]["story"],
                                        lesson: stories[4]["lesson"],
                                      )));
                        },
                        image: Image.asset(
                          stories[4]["imagePath"],
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: stories[5]["title"],
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      StoriesDetailsPage(
                                        title: stories[5]["title"],
                                        imagePath: stories[5]["imagePath"],
                                        story: stories[5]["story"],
                                        lesson: stories[5]["lesson"],
                                      )));
                        },
                        image: Image.asset(
                          stories[5]["imagePath"],
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: stories[6]["title"],
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      StoriesDetailsPage(
                                        title: stories[6]["title"],
                                        imagePath: stories[6]["imagePath"],
                                        story: stories[6]["story"],
                                        lesson: stories[6]["lesson"],
                                      )));
                        },
                        image: Image.asset(
                          stories[6]["imagePath"],
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: stories[7]["title"],
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      StoriesDetailsPage(
                                        title: stories[7]["title"],
                                        imagePath: stories[7]["imagePath"],
                                        story: stories[7]["story"],
                                        lesson: stories[7]["lesson"],
                                      )));
                        },
                        image: Image.asset(
                          stories[7]["imagePath"],
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: stories[8]["title"],
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      StoriesDetailsPage(
                                        title: stories[8]["title"],
                                        imagePath: stories[8]["imagePath"],
                                        story: stories[8]["story"],
                                        lesson: stories[8]["lesson"],
                                      )));
                        },
                        image: Image.asset(
                          stories[8]["imagePath"],
                          height: 100,
                          width: 100,
                        ),
                      ),
                      StoriesTileWidget(
                        title: stories[9]["title"],
                        callBack: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      StoriesDetailsPage(
                                        title: stories[9]["title"],
                                        imagePath: stories[9]["imagePath"],
                                        story: stories[9]["story"],
                                        lesson: stories[9]["lesson"],
                                      )));
                        },
                        image: Image.asset(
                          stories[9]["imagePath"],
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class StoriesTileWidget extends StatelessWidget {
  final Image image;
  final String title;

  final VoidCallback callBack;
  const StoriesTileWidget({
    Key? key,
    required this.title,
    required this.callBack,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callBack,
      child: Container(
        height: 150,
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
          ],
        ),
        child: Column(
          children: [
            image,
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
