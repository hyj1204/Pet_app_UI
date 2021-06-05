import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: 8),
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                hintText: 'Search pet to adopt',
                hintStyle: TextStyle(color: Colors.black54),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            )),
            Icon(Icons.tune),
          ],
        ));
  }
}
