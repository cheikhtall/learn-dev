import 'package:flutter/material.dart';
import 'package:learn_dev/screens/poo/poo_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
      ),
    );
  }
}

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(vertical:30, horizontal: 12);
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
              icon : Icons.people,
              onClicked: ()=>
                selectedItem(context, 0),
            
            ),
             buildMenuItem(
              text: 'Développement Web',
              icon : Icons.computer,
              onClicked: ()=> selectedItem(context, 1),
            
            ),
             buildMenuItem(
              text: 'Développement Mobile',
              icon : Icons.phone_android,
            ),
            const SizedBox(height: 24),
            Divider(color: Colors.white),
            const SizedBox(height: 24),
             
          ],
        )
      ),
    );
  }
  
  Widget buildMenuItem({
    required String text, 
    required IconData icon,
    onClicked,
  })
  {
  final color = Colors.white;
  final hoverColor = Colors.white70;
  return ListTile(
    leading: Icon(icon, color : color),
    title: Text(text, style : TextStyle(color: color)),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
  }

  void selectedItem (BuildContext context, int index)
  {
     switch (index) {
       case 0:
         Navigator.of(context).push(MaterialPageRoute(
         builder: (context)=>PooScreen()));
         break;
        case 1:
          Navigator.of(context).push(MaterialPageRoute(
           builder: (context)=>PooScreen()));
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

