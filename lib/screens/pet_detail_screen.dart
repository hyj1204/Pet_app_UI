import 'package:Pet_app_UI/constant.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PetDetailScreen extends StatelessWidget {
  PetDetailScreen(
      {this.name, this.image, this.years, this.isFemale, this.bgColor});
  final String name;
  final String image;
  final double years;
  final bool isFemale;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: [
      //background
      Positioned.fill(
          child: Column(
        children: [
          Flexible(
              child: Container(
            color: bgColor,
          )),
          Flexible(
              child: Container(
            color: Colors.white,
          )),
        ],
      )),
      //icons on the top
      Padding(
        padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
        child: Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 40,
                    color: Theme.of(context).buttonColor,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              IconButton(
                  icon: Icon(
                    Icons.share_rounded,
                    size: 35,
                    color: Theme.of(context).buttonColor,
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
      //pet photo
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Align(
          alignment: Alignment.topCenter,
          child: Hero(
            tag: image,
            child: Image.asset(
              image,
              height: size.height * 0.4,
            ),
          ),
        ),
      ),
      //brief info in the middle
      Align(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 150,
          width: size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[200],
                  blurRadius: 15,
                  offset: Offset(0, 15))
            ],
          ),
          child: Column(
            children: [
              Container(
                height: 100,
                padding: EdgeInsets.only(left: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          isFemale
                              ? MdiIcons.genderFemale
                              : MdiIcons.genderMale,
                          size: 35,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Abyssinian Cat',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${years.toString().replaceAll(RegExp(r'.0'), '')} years old',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: kDarkGreen,
                    ),
                    Text(
                      ' 5 Bulvarno-Kudriavska Street, Kyiv',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //owner information
      Align(
          alignment: Alignment(0, 0.5),
          child: Container(
            height: 150,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('lib/images/avatar.jpeg'),
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Maya Berkovskaya',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: '\nOwner',
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.normal,
                              )),
                        ]),
                  ),
                  Spacer(),
                  Text('May 25,2019',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.normal,
                      )),
                ],
              ),
              Spacer(),
              RichText(
                  text: TextSpan(
                      text:
                          'My job requires moving to another country. I don\'t have the opportunity to take the cat with me. I am looking for good people who will shelter my Sola.',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      )))
            ]),
          )),
      //bottom button
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 150,
          color: Colors.grey[100],
          child: Row(
            children: [
              Container(
                height: 60,
                width: 70,
                decoration: BoxDecoration(
                  boxShadow: kGreenBoxShadow,
                  borderRadius: BorderRadius.circular(20),
                  color: kDarkGreen,
                ),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Container(
                  padding: EdgeInsets.all(16),
                  width: size.width * 0.65,
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: kGreenBoxShadow,
                    borderRadius: BorderRadius.circular(20),
                    color: kDarkGreen,
                  ),
                  child: Text(
                    'Adoption',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 1),
                    textAlign: TextAlign.center,
                  ))
            ],
          ),
        ),
      ),
    ]));
  }
}
