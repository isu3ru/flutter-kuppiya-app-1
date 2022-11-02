import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CardApp(),
    );
  }
}

class CardApp extends StatefulWidget {
  const CardApp({Key? key}) : super(key: key);

  @override
  State<CardApp> createState() => _CardAppState();
}

class _CardAppState extends State<CardApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA8F5FF),
      appBar: AppBar(
        backgroundColor: Color(0xff02606C),
        title: Text('My First Mobile Application'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/man.png',
              width: 100.0,
              height: 100.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'John M. Tarpley',
              style: GoogleFonts.leckerliOne(
                fontSize: 28,
              ),
            ),
            SizedBox(height: 46.0),
            Container(
              margin: EdgeInsets.all(20.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact Number',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff02606C), width: 1.0),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 37.0),
                        Text(
                          '+94771234567',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Email Address',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff02606C), width: 1.0),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 37.0),
                        Text(
                          'john.m.tarpley@gmail,com',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
