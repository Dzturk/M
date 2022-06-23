import 'package:flutter/cupertino.dart';

class Animals {
  static const String cat = 'assets/images/cat-icon.png';
  // static const bird = AssetImage('assets/images/bird-icon.png');
  // static const bull = AssetImage('assets/images/bull-icon.png');
  // static const butterfly = AssetImage('assets/images/butterfly-icon.png');
  // static const dog = AssetImage('assets/images/dog-icon.png');
  // static const elephant = AssetImage('assets/images/elephant-icon.png');
  // static const horse = AssetImage('assets/images/horse-icon.png');
  // static const lion = AssetImage('assets/images/lion-icon.png');
  // static const owl = AssetImage('assets/images/owl-icon.png');
  // static const panda = AssetImage('assets/images/panda-icon.png');
  // static const rabbit = AssetImage('assets/images/rabbit-icon.png');
  // static const rooster = AssetImage('assets/images/rooster-icon.png');
  // static const snake = AssetImage('assets/images/snake-icon.png');
  // static const turtle = AssetImage('assets/images/turtle-icon.png');
}

getImg(animal) {
  Image(image: AssetImage(animal));
}
