import 'package:flutter/material.dart';
import 'package:topicos/utilities/counter.dart';
import 'package:topicos/utilities/image_carousel.dart';

void main() {
  runApp(const FirstScreen());
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FirstScreen();
  }
}

class _FirstScreen extends State<FirstScreen> {
  bool _isFavorited = true;
  
  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 21, 110, 5),
          leading: Row(
            children: <Widget>[
              const SizedBox(
                width: 5.0,
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.money_rounded,
                color: Color.fromARGB(255, 169, 255, 98),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              width: 20.0,
            ),
          ],
        ),
        backgroundColor: Colors.grey,
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CarouselWithIndicatorDemo(),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.zero,
                        topRight: Radius.zero,
                      )),
                  height: 600,
                  width: 500,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Dolar',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text('1 dolar cada unidad'),
                          const SizedBox(
                            height: 20.0,
                          ),
                          CounterDesign(),
                          const SizedBox(
                            height: 30.0,
                          ),
                          const Text(
                            'Conversión de pesos a dolares',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Text(
                            'La conversión de pesos a dólares consiste en asignar un valor en dólares a una cantidad específica de pesos utilizando la tasa de cambio actual. Esto es esencial para transacciones internacionales y se logra multiplicando la cantidad de pesos por la tasa de cambio. La tasa de cambio varía debido a factores económicos. ',
                            style:
                                TextStyle(letterSpacing: 2.0, fontSize: 15.0),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            children: <Widget>[
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                    side: BorderSide(color: Colors.grey),
                                  ), backgroundColor: Colors.grey,
                                  minimumSize: const Size(70.0, 70.0),
                                  elevation: 0.0,
                                ),
                                onPressed: _toggleFavorite,
                                child: Icon(
                                  _isFavorited ? Icons.favorite_border : Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                              const SizedBox(width: 45.0),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                  ), backgroundColor: Colors.grey,
                                  minimumSize: const Size(100.0, 70.0),
                                  elevation: 0.0,
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Pedir cambio',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,)                
                                ),
                              ),
                              const SizedBox(width: 45.0),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                  ), backgroundColor: Colors.grey,
                                  minimumSize: const Size(150.0, 70.0),
                                  elevation: 0.0,
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Cancelar',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,)                
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}