import 'package:flutter/material.dart';
import 'package:learn_dev/constants.dart';
import 'package:learn_dev/screens/home/home_screen.dart';
import 'package:learn_dev/widgets/rounded__button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dev Learning',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme:const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: kBlackColor,
            ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("assets/images/acceuil.jpeg"),
          //     fit: BoxFit.fill,
          //   ),
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Padding(
                padding: EdgeInsets.all(50),
              ),
              Container(
                child: Center(
                  child : Image.asset("assets/images/program.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
              ),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline4,
                  children: [
                    TextSpan(text: "Apprendre le code"),
                    TextSpan(
                      text: "",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .6,
                child: RoundedButton(
                  text: "Commencer",
                  fontSize: 20,
                  press: () {
                    //SchedulerBinding.instance?.addPostFrameCallback((_) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }),
                      );
                  //  });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
