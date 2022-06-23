import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mila/constants/color_scheme.dart';

import 'pages/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
          scaffoldBackgroundColor: ProjectColorScheme.main,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: const Homepage(),
    );
  }
}
