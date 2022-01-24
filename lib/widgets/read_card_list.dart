import 'package:flutter/material.dart';
import 'package:learn_dev/constants.dart';
import 'package:learn_dev/widgets/book_rating.dart';
import 'package:learn_dev/widgets/two_side_roundred_button.dart';

class ReadListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  // final double rating;
  final Function pressDetails;
  final Function pressRead;

  const ReadListCard({
    Key? key, 
    required this.image, 
    required this.title, 
    required this.auth, 
    // required this.rating,
    required this.pressDetails,
    required this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin : EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 35,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            image,
            width: 150,
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.code_off),
                  onPressed: () {},
                ),
                // BookRating(score: rating),
              ],
            ),
          ),
          Positioned(
            top: 160,
            child: Container(
              height: 85,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(color: kBlackColor),
                        children: [
                          TextSpan(
                              text: "$title\n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                            text: auth,
                            style: TextStyle(
                              color: kLightBlackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => pressDetails(),
                        child: Container(
                          width: 101,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: Text("Détails"),
                        ),
                      ),
                      Expanded(
                        child: TwoSiderRoundedButton(
                          text: "Commencer",
                          press: () => pressRead(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
