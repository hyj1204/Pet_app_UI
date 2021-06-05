import 'package:Pet_app_UI/constant.dart';
import 'package:Pet_app_UI/data.dart';
import 'package:flutter/material.dart';

class SideNavigatorScreen extends StatefulWidget {
  @override
  _SideNavigatorScreenState createState() => _SideNavigatorScreenState();
}

class _SideNavigatorScreenState extends State<SideNavigatorScreen> {
  final titleTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 21);
  final inactiveTitleTextStyle = TextStyle(
      color: Colors.white70, fontWeight: FontWeight.normal, fontSize: 21);

  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 50),
      color: kDarkGreen,
      child: Column(
        children: [
          //user info on the top
          Row(
            children: [
              CircleAvatar(
                  backgroundImage: AssetImage('lib/images/avatar.jpeg')),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Miroslave Savitskaya', style: titleTextStyle),
                  SizedBox(
                    height: 3,
                  ),
                  Text('Active Status',
                      style: TextStyle(color: Colors.white70, fontSize: 16)),
                ],
              )
            ],
          ),
          Spacer(),
          //Side navigator
          Column(
            children: drawerItems
                .map((e) => GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = drawerItems.indexOf(e);
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Icon(
                              e['icon'],
                              color: drawerItems.indexOf(e) == isSelected
                                  ? Colors.white
                                  : Colors.white70,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              e['title'],
                              style: drawerItems.indexOf(e) == isSelected
                                  ? titleTextStyle
                                  : inactiveTitleTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ))
                .toList(),
          ),
          Spacer(),

          //设置项
          Row(
            children: [
              Icon(
                Icons.settings,
                color: Colors.white70,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Settings',
                style: kInactiveTitle,
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 2,
                height: 20,
                color: Colors.white70,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Log out',
                style: kInactiveTitle,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
