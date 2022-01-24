import 'package:flutter/material.dart';
import 'package:learn_dev/constants.dart';
import '../rounded__button.dart';

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final Function press;
  const ChapterCard({
    Key? key,
    required this.name, 
    required this.tag, 
    required this.chapterNumber, 
    required this.press,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical:20, horizontal:30),
      margin : EdgeInsets.only(bottom: 30),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow : [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius : 33,
            color: Color(0xFFD3D3D3).withOpacity(.84),
          ),
        ],
      ),
      child : Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text : "Chapitre $chapterNumber : $name\n",
                  style: TextStyle( 
                    fontSize: 16,
                    color : kBlackColor,
                    fontWeight:FontWeight.bold,
                  )
                ),
                TextSpan(
                  text : tag,
                  style : TextStyle(color: kLightBlackColor),
                )
              ],
            ),
          ),
          Spacer(),
          IconButton(onPressed: () => press(),
           icon: Icon(Icons.arrow_forward_ios, size: 18),
           )
        ],
        
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
           crossAxisAlignment : CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Appredre le langage",
                style: Theme.of(context).textTheme.headline5,
              ),
               
              Text(
                "JAVA",
                style: Theme.of(context).textTheme
                .headline4?.copyWith(fontWeight: FontWeight.bold,
                ),
              ),
              
              Row(
                crossAxisAlignment : CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded (
                    child: 
                      Column(
                        children: <Widget> [
                          Text("l'époque était de constituer un langage de programmation pouvant être intégré dans les appareils électroménagers, afin de pouvoir les contrôler, de les rendre interactifs, et surtout de per",
                          maxLines: 5,
                          style: TextStyle(
                            fontSize : 10,
                            color : kLightBlackColor,
                          ),
                          ),
                          SizedBox(height :5),
                          RoundedButton(text: "Lire",
                          press :(){}),
                        ],
                      )
                  ),
                  // Column(
                  //   children: <Widget>[
                  //    IconButton(onPressed:(){}, 
                  //       icon: Icon(Icons.favorite_border),
                  //     ),
                  //     // BookRating(score : 4.9),
                  //   ] 
                  // )
                ],
              ),
            ],
          )
      ),
      Image.asset(
        "assets/images/java.png",
        height: 95,
      ),
      ],
    );
  }
}
