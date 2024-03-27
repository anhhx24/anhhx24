import 'package:flutnew/test2cal.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp1());
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mypage(),);

  }
}
class mypage extends StatefulWidget {
  const mypage({super.key});

  @override
  State<mypage> createState() => _mypageState();
}

class _mypageState extends State<mypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:  Center(child: ElevatedButton(onPressed: () =>
    {

    }, child: Text("NO DATA"),),),);
  }
}

