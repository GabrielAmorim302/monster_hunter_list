import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF584E4E),
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.00, -0.50),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  'assets/images/pngegg.png',
                  width: 325,
                  height: 249,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 0.20),
              child: Text(
                'List Monster',
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'monsterhunter',
                  color: Color.fromARGB(255, 255, 255, 255),
                )
              )
            )
          ]
      ),
    )
  );
  }
}
