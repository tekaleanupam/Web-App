import 'package:flutter/material.dart';
import 'package:flutter_web/Nav/navbar.dart';
import 'package:flutter_web/landingpage/landingpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Colors.white,
                Colors.white,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Navbar(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 40.0,
                  ),
                  child: LandingPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
