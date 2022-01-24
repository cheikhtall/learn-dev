import 'package:flutter/material.dart';
import 'package:learn_dev/widgets/java/screen_java.dart';
import 'package:learn_dev/widgets/python/screen_python.dart';
import 'package:learn_dev/widgets/read_card_list.dart';

class PooScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/images/main_page_bg.png"),
        //     alignment: Alignment.topCenter,
        //     fit: BoxFit.fitWidth,
        //   ),
        // ),
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height * .1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline5,
                  children: [
                    TextSpan(
                      text: "Apprendre à coder\n ",
                    ),
                    TextSpan(
                      text: "Maintenant",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:<Widget>[
                  ReadListCard(
                    image: "assets/images/java.png",
                    title: "Java",
                    auth: 'Coder en Java',
                    // rating: 4.9,
                     pressDetails : (){},
                    pressRead: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){
                            return CommencerScreen();
                          }
                        ),
                      );
                    },
                  ),
                  ReadListCard(
                    image: "assets/images/python.png",
                    title: "Python",
                    auth: 'Coder en Python',
                    // rating: 4.9,
                    pressDetails : (){},
                    pressRead: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){
                            return ScreenPython();
                          }
                        ),
                      );
                    },
                  ),
                  ReadListCard(
                    image: "assets/images/php.png",
                    title: "PHP",
                    auth: 'Coder en PHP',
                    // rating: 4.9,
                    pressDetails : (){},
                    pressRead: (){},
                  ),
                   ReadListCard(
                    image: "assets/images/codeur.png",
                    title: "C++",
                    auth: 'Coder en C++',
                    // rating: 4.9,
                    pressDetails : (){},
                    pressRead: (){},
                  ),
                  SizedBox(width: 30,)
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

