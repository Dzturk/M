import 'package:flutter/material.dart';

import '../constants/color_scheme.dart';

class HomepageRadiusedContainer extends StatelessWidget {
  const HomepageRadiusedContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(50),
          ),
          color: ProjectColorScheme.pink),
      child: Stack(
        children: [headerTextBg(), headerText()],
      ),
    );
  }

  Positioned headerTextBg() {
    return Positioned(
        top: 80,
        left: 0,
        child: Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
                color: ProjectColorScheme.main,
                borderRadius:
                    const BorderRadius.only(topRight: Radius.circular(50), bottomRight: Radius.circular(50)))));
  }

  Positioned headerText() {
    return Positioned(
        top: 100,
        left: 30,
        child: Text(
          'Animals',
          style: TextStyle(
              fontSize: 40, color: ProjectColorScheme.pink, fontFamily: 'Space Mono', fontWeight: FontWeight.bold),
        ));
  }
}
