import 'package:Pet_app_UI/constant.dart';

import 'package:flutter/material.dart';

import 'components/category.dart';
import 'components/pet_intro.dart';
import 'components/search_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOfferset = 0;
  double yOfferset = 0;
  double scaleFactor = 1;
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: isOpen ? BorderRadius.all(Radius.circular(40)) : null,
      ),
      transform: Matrix4.translationValues(xOfferset, yOfferset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 200),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 50,
        ),
        //Customized App Bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              isOpen
                  ? IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: kButtonSize,
                        color: Theme.of(context).buttonColor,
                      ),
                      onPressed: () {
                        setState(() {
                          xOfferset = 0;
                          yOfferset = 0;
                          scaleFactor = 1;
                          isOpen = false;
                        });
                      })
                  : IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: kButtonSize,
                        color: Theme.of(context).buttonColor,
                      ),
                      onPressed: () {
                        setState(() {
                          xOfferset = 200;
                          yOfferset = 100;
                          scaleFactor = 0.75;
                          isOpen = true;
                        });
                      }),
              Column(
                children: [
                  Text(
                    'Location',
                    style: TextStyle(color: Colors.grey[400], fontSize: 16),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: kDarkGreen,
                      ),
                      SizedBox(width: 5),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(text: 'Kyiv, ', style: kTitle1),
                        TextSpan(
                            text: 'Ukraine',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 20))
                      ])),
                    ],
                  ),
                ],
              ),
              CircleAvatar(
                  backgroundImage: AssetImage('lib/images/avatar.jpeg')),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: size.height * 0.04),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40))),
            child: Column(
              children: [
                SearchBar(),
                Category(),
                PetIntro(
                  name: 'Sola',
                  image: 'lib/images/pet-cat2.png',
                  years: 2,
                  distance: 3.6,
                  isFemale: true,
                  bgColor: Colors.blueGrey[100],
                ),
                PetIntro(
                  name: 'Orion',
                  image: 'lib/images/pet-cat1.png',
                  years: 1.5,
                  distance: 7.8,
                  isFemale: false,
                  bgColor: Colors.orangeAccent[100],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
