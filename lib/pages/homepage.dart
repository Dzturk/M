import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:mila/constants/color_scheme.dart';
import 'package:mila/utility/animal_sounds.dart';
import 'package:mila/utility/images.dart';
import 'package:mila/widgets/homepage_widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  playSound() async {
    AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
    await audioPlayer.open(
      Audio(
        AnimalSounds.lion,
      ),
    );
  }

  //! Kodu daha okunabilir ve daha fonksiyonel hale getirmem gerekiyor. Yarın artık :)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const HomepageRadiusedContainer(),
        SizedBox(
          height: 230,
          child: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 40),
                  child: Positioned(
                    top: 35,
                    left: 20,
                    child: Material(
                      child: Container(
                          height: 150,
                          width: 350,
                          decoration: BoxDecoration(
                              color: ProjectColorScheme.main,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.pink.withOpacity(0.7),
                                    spreadRadius: 4,
                                    blurRadius: 20,
                                    offset: const Offset(-10.0, 10.0))
                              ])),
                    ),
                  )),
              Positioned(
                  top: 0,
                  left: 10,
                  child: Card(
                    elevation: 10.0,
                    shadowColor: ProjectColorScheme.pink.withOpacity(1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.pink.withOpacity(0.7),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: const Offset(0, 10.0))
                        ],
                        color: ProjectColorScheme.main,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(Animals.lion),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  )),
              Positioned(
                top: 0,
                left: 160,
                child: SizedBox(
                  height: 150,
                  width: 180,
                  child: Row(
                    children: [
                      Text(
                        'Lion',
                        style: TextStyle(
                          fontSize: 30,
                          color: ProjectColorScheme.pink,
                          fontFamily: "Space Mono",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: IconButton(
                            onPressed: () => playSound(),
                            icon: Icon(
                              Icons.volume_up_outlined,
                              color: ProjectColorScheme.pink,
                              size: 40,
                            )),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
