import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

List<Map> categories = [
  {'name': 'Cats', 'iconPath': 'lib/images/cat.png'},
  {'name': 'Dogs', 'iconPath': 'lib/images/dog.png'},
  {'name': 'Bunnies', 'iconPath': 'lib/images/rabbit.png'},
  {'name': 'Parrots', 'iconPath': 'lib/images/parrot.png'},
  {'name': 'Horses', 'iconPath': 'lib/images/horse.png'}
];

List<Map> drawerItems = [
  {'icon': FontAwesomeIcons.paw, 'title': 'Adoption'},
  {'icon': Icons.mail, 'title': 'Donation'},
  {'icon': FontAwesomeIcons.plus, 'title': 'Add pet'},
  {'icon': Icons.favorite, 'title': 'Favorites'},
  {'icon': Icons.mail, 'title': 'Messages'},
  {'icon': FontAwesomeIcons.userAlt, 'title': 'Profile'},
];
