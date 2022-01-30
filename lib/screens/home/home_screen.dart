import 'package:flutter/material.dart';
import 'package:learn_dev/screens/poo/poo_screen.dart';
import '../../constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(),
      body: SingleChildScrollView
      (
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children :<Widget>[ 
              Padding(
                  padding: EdgeInsets.all(20),
                ),
              Container(
              child: Container(
                  height: size.height * .35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/images/cert.png"),
                      fit : BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Container(
                height: size.height * .60,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Text(
                        //   "Apprendre les concepts \nFondamentaux",
                        //   style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.bold),
                        // ),
                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 2,
                            childAspectRatio: .80,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 10,
                            children: <Widget>[
                              BasesCard(
                                svgSrc: "assets/images/codeur.png",
                                title: "Algorithme",
                                press: (){},
                              ),
                              BasesCard(
                                svgSrc: "assets/images/codeur.png",
                                title: "Application WEB",
                                press: (){},
                              ),
                              BasesCard(
                                svgSrc: "assets/images/codeur.png",
                                title: "Algorithmique",
                                press: (){},
                              ),
                               BasesCard(
                                svgSrc: "assets/images/codeur.png",
                                title: "Algorithmique",
                                press: (){},
                              ),
                               BasesCard(
                                svgSrc: "assets/images/codeur.png",
                                title: "Algorithmique",
                                press: (){},
                              ),
                            ],
                          ),
                        ),   
                    ]
                  ),
                  ),
                ),
               ],
            ),
          ),
      ),
    );
  }
}

class BasesCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  const BasesCard({
    Key? key,
    required this.svgSrc, 
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        //padding: EdgeInsets.all(20),
        decoration : BoxDecoration(
          color : Colors.white,
          borderRadius: BorderRadius.circular(15),   
          boxShadow : [
            BoxShadow(
              offset : Offset(0, 17),
              blurRadius : 17,
              spreadRadius : -23,
              color: kShadowColor,
            ),
          ],              
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => press(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Image.asset(svgSrc),
                  Text(
                    title,
                    style: Theme.of(context).textTheme
                    .headline6?.
                    copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(vertical: 30, horizontal: 12);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
          color: Color.fromRGBO(0, 0, 0, 0.8),
          child: ListView(
            padding: padding,
            children: <Widget>[
              const SizedBox(height: 48),
              buildMenuItem(
                text: 'Programmation Orientée Objet',
                icon: Icons.people,
                onClicked: () => selectedItem(context, 0),
              ),
              buildMenuItem(
                text: 'Développement Web',
                icon: Icons.computer,
                onClicked: () => selectedItem(context, 1),
              ),
              buildMenuItem(
                text: 'Développement Mobile',
                icon: Icons.phone_android,
              ),
              const SizedBox(height: 24),
              Divider(color: Colors.white),
              const SizedBox(height: 24),
            ],
          )),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => PooScreen()));
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => PooScreen()));
        break;
    }
  }
}
































// import 'package:flutter/material.dart';
// import 'package:learn_dev/widgets/java/screen_java.dart';
// import 'package:learn_dev/widgets/python/screen_python.dart';
// import 'package:learn_dev/widgets/read_card_list.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         // decoration: BoxDecoration(
//         //   image: DecorationImage(
//         //     image: AssetImage("assets/images/main_page_bg.png"),
//         //     alignment: Alignment.topCenter,
//         //     fit: BoxFit.fitWidth,
//         //   ),
//         // ),
//         child: Column(
//           children: <Widget>[
//             SizedBox(height: size.height * .1),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 24),
//               child: RichText(
//                 text: TextSpan(
//                   style: Theme.of(context).textTheme.headline5,
//                   children: [
//                     TextSpan(
//                       text: "Apprendre à coder\n ",
//                     ),
//                     TextSpan(
//                       text: "Maintenant",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 30
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children:<Widget>[
//                   ReadListCard(
//                     image: "assets/images/java.png",
//                     title: "Java",
//                     auth: 'Coder en Java',
//                     // rating: 4.9,
//                      pressDetails : (){},
//                     pressRead: (){
//                       Navigator.push(
//                         context, 
//                         MaterialPageRoute(
//                           builder: (context){
//                             return CommencerScreen();
//                           }
//                         ),
//                       );
//                     },
//                   ),
//                   ReadListCard(
//                     image: "assets/images/python.png",
//                     title: "Python",
//                     auth: 'Coder en Python',
//                     // rating: 4.9,
//                     pressDetails : (){},
//                     pressRead: (){
//                       Navigator.push(
//                         context, 
//                         MaterialPageRoute(
//                           builder: (context){
//                             return ScreenPython();
//                           }
//                         ),
//                       );
//                     },
//                   ),
//                   ReadListCard(
//                     image: "assets/images/php.png",
//                     title: "PHP",
//                     auth: 'Coder en PHP',
//                     // rating: 4.9,
//                     pressDetails : (){},
//                     pressRead: (){},
//                   ),
//                    ReadListCard(
//                     image: "assets/images/codeur.png",
//                     title: "C++",
//                     auth: 'Coder en C++',
//                     // rating: 4.9,
//                     pressDetails : (){},
//                     pressRead: (){},
//                   ),
//                   SizedBox(width: 30,)
//                 ],
//               ),
//             ),
            
//           ],
//         ),
//       ),
//     );
//   }
// }

