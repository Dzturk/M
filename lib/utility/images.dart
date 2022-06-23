import 'package:flutter/cupertino.dart';

class Animals {
  static const String cat = 'assets/images/cat-icon.png';
  static const String bird = 'assets/images/bird-icon.png';
  static const String bull = 'assets/images/bull-icon.png';
  static const String butterfly = 'assets/images/butterfly-icon.png';
  static const String dog = 'assets/images/dog-icon.png';
  static const String elephant = 'assets/images/elephant-icon.png';
  static const String horse = 'assets/images/horse-icon.png';
  static const String lion = 'assets/images/lion-icon.png';
  static const String owl = 'assets/images/owl-icon.png';
  static const String panda = 'assets/images/panda-icon.png';
  static const String rabbit = 'assets/images/rabbit-icon.png';
  static const String rooster = 'assets/images/rooster-icon.png';
  static const String snake = 'assets/images/snake-icon.png';
  static const String turtle = 'assets/images/turtle-icon.png';
}

getImg(animal) {
  return Image(
    image: AssetImage(animal),
    height: 100,
    width: 100,
  );
}
