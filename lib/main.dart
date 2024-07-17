import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Widget content({
  Str,
  var clr = Colors.black,
}) =>
    Text(
      Str,
      style: TextStyle(color: clr),
      textDirection: TextDirection.ltr,
    );

Widget cetakText(
  Widget txt, {
  double h = 100.0,
  double w = 300.0,
  var clr = Colors.lightGreenAccent,
}) =>
    Container(
      height: h,
      width: w,
      color: clr,
      child: Center(
        child: txt,
      ),
    );

Widget cetakTextFoto(
        {double h = 500.0,
        double w = 600.0,
        var bgr = Colors.pinkAccent,
        var txt = 'hai',
        var img = const NetworkImage(
            'https://raw.githubusercontent.com/Maryamjuliana/myapp/main/20201207_060222.jpg')}) =>
    Container(
      height: h,
      width: w,
      color: bgr,
      child: Column(
        children: [
          spasi(),
          content(Str: txt),
          Container(
            margin: const EdgeInsets.all(20),
            child: Image(
              image: img,
              width: 200,
            ),
          )
        ],
      ),
    );

Widget spasi({double h = 20.0}) => SizedBox(
      height: h,
    );
var titleAppBar = const Text('dataku');

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: titleAppBar,
        ),
        body: const Programnya(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Programnya extends StatelessWidget {
  const Programnya({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical,
    children: [
      cetakText(const Text('Hello Word\nHai Semuanya....\nPerkenalkan Nama Saya Maryam'),
      w: double.infinity ),
      spasi(h: 10.0),
      cetakTextFoto(
        txt: 'Hello Word\nHai Semuanya....\nPerkenalkan Nama Saya Aleeya'
      ),
      spasi(h: 10.0),
      cetakTextFoto(
        txt: 'Hello Word\nHai Semuanya....\nPerkenalkan Nama Saya Maryam'
      ),
    ],);
  }
}