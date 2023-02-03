import 'dart:async';
import 'package:intl/intl.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:trabalho2/screens/competition_page.dart';
import 'package:trabalho2/screens/jogos_page.dart';
import 'package:trabalho2/screens/clubes_page.dart';
import '../populating/corouselSlider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final List<Widget> imageSliders = carouselSlider
    .map(
      (e) => Container(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(5.0),
                ),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      e.imagem,
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Text(
                        e.titulo,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    )
    .toList();

class _HomePageState extends State<HomePage> {
  var formattedTime = DateFormat('HH:mm:ss').format(DateTime.now());
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        formattedTime = DateFormat('HH:mm:ss').format(DateTime.now());
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size.width;
    const double imagesize = 100;
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Liga Portuguesa',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                '2',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Center(
                    child: SizedBox(
                      width: widthScreen - (widthScreen / 2),
                      height: 90,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'images/background_app_image.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    heightFactor: 2,
                    child: Text(
                      formattedTime,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  const Center(
                    child: SizedBox(
                      height: 70,
                      child: Text(
                        'Before the next game!',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 400,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: const Duration(seconds: 1),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
                items: imageSliders,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    width: (widthScreen / 3),
                    height: 90,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'images/clube.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 45,
                    left: 55,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const CompetitionPage();
                            },
                          ),
                        );
                      },
                      child: const Text('Competitions',
                          style: TextStyle(fontSize: 25)),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'images/5.png',
                        ),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const JogosPage();
                            },
                          ),
                        );
                      },
                      child: const Text('Jogos'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
