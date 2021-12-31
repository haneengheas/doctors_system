import 'package:doctors_system/constant/styles.dart';
import 'package:doctors_system/screens/charts/cloumn_chart.dart';
import 'package:doctors_system/screens/charts/pie_chart.dart';
import 'package:flutter/material.dart';

List<List> patient = [
  [
    const Text(
      'Ahmed Hassan',
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    ),
    const CircleAvatar(
      backgroundImage: AssetImage('assets/male.png'),
    ),
    const Icon(
      Icons.dangerous,
      color: Colors.red,
    ),
    const Text(
      'Dr: Mohsen',
      style:
          TextStyle(color: purple, fontSize: 22, fontWeight: FontWeight.w500),
    ),
    'Ahmed Hassan',
    'male.png',
    [
      ['30 years', 'male','20/10/2020', '20/10/2020', '1.1', '18', '20', 'serious'],
      ['30 years', 'male','20/10/2020', '30/11/2020', '0.8', '22', '15', 'serious'],
      ['30 years','male', '20/10/2021', '15/1/2021', '.5', '24', '10', 'stable'],
      ['30 years','male', '20/10/2021', '30/2/2021', '.3', '21', '8', 'stable'],
    ],
    <AcretinData>[
      AcretinData('week1', 1.1),
      AcretinData('week2', .8),
      AcretinData('week3', .5),
      AcretinData('week4', .3),
    ],
    <BunData>[
      BunData("week1", 18),
      BunData("week2", 22),
      BunData("week3", 24),
      BunData("week4", 21),
    ],
    <AcretinData>[
      AcretinData('week1', 20),
      AcretinData('week2', 15),
      AcretinData('week3', 10),
      AcretinData('week4', 8),
    ],
  ],
  [
    const Text(
      'Amr Mahmoud',
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    ),
    const CircleAvatar(
      backgroundImage: AssetImage('assets/male.png'),
    ),
    const Icon(
      Icons.dangerous,
      color: Colors.red,
    ),
    const Text(
      'Dr: Mohsen',
      style:
          TextStyle(color: purple, fontSize: 22, fontWeight: FontWeight.w500),
    ),
    'Amr Mahmoud',
    'male.png',
    [
      ['20 years','male', '25/12/2021', '25/12/2021', '1.1', '22', '20', 'serious'],
    ],
    <AcretinData>[
      AcretinData('week1', 1.1),
    ],
    <BunData>[
      BunData("week1", 22),
    ],
    <AcretinData>[
      AcretinData('week1', 20),
    ],
  ],
  [
    const Text(
      'Mona Mohamed',
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    ),
    const CircleAvatar(
      backgroundImage: AssetImage('assets/female.png'),
    ),
    const Icon(
      Icons.dangerous,
      color: Colors.yellow,
    ),
    const Text(
      'Dr: Mohsen',
      style:  TextStyle(
          color: purple, fontSize: 22, fontWeight: FontWeight.w500),
    ),
    'Mona Mohamed',
    'female.png',
    [
      ['60 years','female', '20/10/2020', '20/10/2020', '0.8', '18', '20', 'serious'],
      ['60 years','female', '20/10/2020', '30/11/2020', '0.7', '22', '15', 'serious'],
      ['60 years', 'female','20/10/2021', '15/1/2021', '.5', '24', '10', 'stable'],
      ['60 years', 'female','20/10/2021', '30/2/2021', '.3', '21', '8', 'stable'],
      ['60 years', 'female','20/10/2021', '30/2/2021', '.3', '21', '8', 'stable'],
    ],
    <AcretinData>[
      AcretinData('week1', .8),
      AcretinData('week2', .7),
      AcretinData('week3', .5),
      AcretinData('week4', .3),
      AcretinData('week5', .3),
    ],
    <BunData>[
      BunData("week1", 18),
      BunData("week2", 22),
      BunData("week3", 24),
      BunData("week4", 21),
      BunData("week5", 21),
    ],
    <AcretinData>[
      AcretinData('week1', 20),
      AcretinData('week2', 15),
      AcretinData('week3', 10),
      AcretinData('week4', 8),
      AcretinData('week5', 8),
    ],
  ],
  [
    const Text(
      'Ibrahim hassan',
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    ),
    const CircleAvatar(
      backgroundImage: AssetImage('assets/male.png'),
    ),
    const Icon(
      Icons.dangerous,
      color: Colors.green,
    ),
    const Text(
      'Dr: Mohsen',
      style:
          TextStyle(color: purple, fontSize: 22, fontWeight: FontWeight.w500),
    ),
    'Ibrahim hassan',
    'male.png',
    [
      ['40 years','male', '20/10/2020', '20/10/2020', '.5', '25', '20', 'stable'],
      ['40 years', 'male','20/10/2020', '12/12/2020', '.3', '20', '17', 'stable'],
    ],
    <AcretinData>[
      AcretinData('week1', .5),
      AcretinData('week2', .3),
    ],
    <BunData>[
      BunData("week1", 25),
      BunData("week2", 20),
    ],
    <AcretinData>[
      AcretinData('week1', 20),
      AcretinData('week2', 17),
    ],
  ],
];
List<Color> colors = [
  Colors.red,
  Colors.red,
  Colors.yellow,
  Colors.green,
];
