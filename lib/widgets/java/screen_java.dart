import 'package:flutter/material.dart';
import 'package:learn_dev/widgets/java/java_chapters.dart';

class CommencerScreen extends StatelessWidget {
  const CommencerScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment : Alignment.topCenter,
              children: <Widget>[
                Container(
                  height : size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image : AssetImage("assets/images/bg.png"),
                      fit : BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child : Padding(
                    padding: EdgeInsets.symmetric(horizontal:24),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: size.height * .1),
                        BookInfo(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .4 - 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ChapterCard(
                        name: "Introduction",
                        chapterNumber : 1,
                        tag : "Débuter le cours",
                        press : (){},
                      ),
                      ChapterCard(
                        name: "Introduction",
                        chapterNumber : 1,
                        tag : "Débuter le cours",
                        press : (){},
                      ),
                      ChapterCard(
                        name: "Introduction",
                        chapterNumber : 1,
                        tag : "Débuter le cours",
                        press : (){},
                      ),
                      ChapterCard(
                        name: "Introduction",
                        chapterNumber : 1,
                        tag : "Débuter le cours",
                        press : (){},
                      ),ChapterCard(
                        name: "Introduction",
                        chapterNumber : 1,
                        tag : "Débuter le cours",
                        press : (){},
                      ),ChapterCard(
                        name: "Introduction",
                        chapterNumber : 1,
                        tag : "Débuter le cours",
                        press : (){},
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}

