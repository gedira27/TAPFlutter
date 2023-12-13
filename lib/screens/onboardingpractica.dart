import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:topicos/screens/card_planet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}
class OnboardingPractica extends StatelessWidget {
  OnboardingPractica({Key? key}) : super(key: key);

  final data = [
    CardPlanetData(
      title: "Constelaciones",
      subtitle:
          "Las constelaciones son patrones de estrellas en el cielo.",
      image: const AssetImage("assets/images/img-1.png"),
      backgroundColor: Color.fromARGB(255, 2, 31, 161),
      titleColor: Color.fromARGB(255, 252, 214, 48),
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/bg-1.json"),
    ),
    CardPlanetData(
      title: "Constelaciones Zodiacales",
      subtitle: "Las constelaciones zodiacales son grupos de estrellas vinculados a fechas del año.",
      image: const AssetImage("assets/images/img-2.png"),
      backgroundColor: Color.fromARGB(255, 106, 4, 108),
      titleColor: Color.fromARGB(255, 184, 22, 22),
      subtitleColor: const Color.fromRGBO(0, 10, 56, 1),
      background: LottieBuilder.asset("assets/animation/bg-2.json"),
    ),
    CardPlanetData(
      title: "Virgo",
      subtitle: "Virgo es una constelación zodiacal que representa a una doncella.",
      image: const AssetImage("assets/images/img-3.png"),
      backgroundColor: Color.fromARGB(255, 248, 255, 184),
      titleColor: Color.fromARGB(255, 122, 248, 63),
      subtitleColor: const Color.fromARGB(255, 0, 0, 0),
      background: LottieBuilder.asset("assets/animation/bg-3.json"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return CardPlanet(data: data[index]);
        },
      ),
    );
  }
}