import 'package:Pet_app_UI/constant.dart';
import 'package:Pet_app_UI/data.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int _isSelectedIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 15),
        height: 130,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
                child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(6),
                  margin:
                      EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color:
                        _isSelectedIndex == index ? kDarkGreen : Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: _isSelectedIndex == index
                        ? kGreenBoxShadow
                        : kBoxShadow,
                  ),
                  height: 70,
                  width: 70,
                  child: IconButton(
                      color: kDarkGreen,
                      icon: Image.asset(
                        categories[index]['iconPath'],
                        color: _isSelectedIndex == index
                            ? Colors.white
                            : Colors.grey[500],
                      ),
                      onPressed: () {
                        setState(() {
                          _isSelectedIndex = index;
                        });
                      }),
                ),
                Text(
                  categories[index]['name'],
                  style: TextStyle(
                      color: _isSelectedIndex == index
                          ? kDarkGreen
                          : Colors.grey[500],
                      fontWeight: FontWeight.bold),
                )
              ],
            ));
          },
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
        ));
  }
}
