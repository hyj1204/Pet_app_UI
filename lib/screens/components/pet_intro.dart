import 'package:Pet_app_UI/constant.dart';
import 'package:Pet_app_UI/screens/pet_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PetIntro extends StatelessWidget {
  const PetIntro(
      {this.name,
      this.image,
      this.years,
      this.distance,
      this.isFemale,
      this.bgColor});

  final String name;
  final String image;
  final double years;
  final double distance;
  final bool isFemale;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return PetDetailScreen(
              name: name,
              image: image,
              years: years,
              isFemale: isFemale,
              bgColor: bgColor);
        }));
      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          height: 250,
          child: Row(
            children: [
              Expanded(
                child: Stack(children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: kBoxShadow,
                    ),
                  ),
                  Hero(
                    tag: image,
                    child: Image.asset(
                      image,
                      height: 230,
                    ),
                  ),
                ]),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: kBoxShadow,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )),
                  height: 160,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 20, right: 10),
                        height: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                Spacer(),
                                Icon(
                                  isFemale
                                      ? MdiIcons.genderFemale
                                      : MdiIcons.genderMale,
                                ),
                              ],
                            ),
                            Text('Abyssinian cat'),
                            Text(
                              '$years years old',
                              style: TextStyle(
                                  color: Colors.grey[500], fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 20,
                              color: kDarkGreen,
                            ),
                            Text(
                              ' Distance: $distance km',
                              style: TextStyle(
                                  color: Colors.grey[500], fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
