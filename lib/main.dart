import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Classwork 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 249, 196),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'CW1 Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _changeto2ndImage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 167, 240, 21),
        title: const Text('Classwork 1 NN'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Text(
//displays the current number
                '$_counter',

                style: const TextStyle(
                  fontSize: 50.0,
                  // I love ternary operators!!!!!
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('Increment'),
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                },
              ),
              const SizedBox(width: 10), // Sets space between the buttons
              ElevatedButton(
                child: const Text('Reset'),
                onPressed: () {
                  setState(() {
                    _counter = 0;
                    _changeto2ndImage = false;
                  });
                },
              ),
              const SizedBox(width: 10), // Sets space between the buttons

              ElevatedButton(
                child: const Text('Toggle Image'),
                onPressed: () {
                  setState(() {
                    _changeto2ndImage = true;
                  });
                },
              ),
              const SizedBox(width: 10),
            ],
          ),
          const SizedBox(height: 20),
          // Conditionally display the image based on the _changeto2ndImage flag
          _changeto2ndImage
              ? Image.asset(
                  'assets/images/Moon.jpg', // Second image
                  width: 400,
                  height: 400,
                )
              : Image.asset(
                  'assets/images/Sun.jpg', // First image
                  width: 400,
                  height: 400,
                ),
        ],
      ),
    );
  }
}
