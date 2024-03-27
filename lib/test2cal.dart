
import 'package:flutter/material.dart';
class Myapp1 extends StatefulWidget {
  const Myapp1({super.key});

  @override
  State<Myapp1> createState() => _Myapp1State();
}

class _Myapp1State extends State<Myapp1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mypage(),);

  }
}
class mypage extends StatefulWidget {
  const mypage({super.key});

  @override
  State<mypage> createState() => _mypageState();
}

class _mypageState extends State<mypage> {
  TextEditingController input1 = new TextEditingController();
  TextEditingController input2 = new TextEditingController();
  double result = 0.0;

  Widget build(BuildContext context) {
    return Scaffold(body:
    Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0),
      child: Column(children: [ TextField(
        controller: input1,
        decoration: InputDecoration(hintText: "input1"),
      ), TextField(
        controller: input2,
        decoration: InputDecoration(hintText: "input2"),
      ),SizedBox(height: 10,),

        ElevatedButton(
          onPressed: () {
            setState(() {
              double num1 = double.parse(input1.text);
              double num2 = double.parse(input2.text);
              result = num1 + num2;
            });
          },
          child: Text('+'),
        ),SizedBox(height: 10,),

        ElevatedButton(
          onPressed: () {
            setState(() {
              double num1 = double.parse(input1.text);
              double num2 = double.parse(input2.text);
              result = num1 - num2;
            });
          },
          child: Text('-'),
        ),SizedBox(height: 10,),

        ElevatedButton(
          onPressed: () {
            setState(() {
              double num1 = double.parse(input1.text);
              double num2 = double.parse(input2.text);
              result = num1 * num2;
            });
          },
          child: Text('*'),
        ),SizedBox(height: 10,),

        ElevatedButton(
          onPressed: () {
            setState(() {
              double num1 = double.parse(input1.text);
              double num2 = double.parse(input2.text);
              if (num1 != 0) {
                result = num1 / num2;
              }
              else {
                result = double.infinity;
              }
            });
          },
          child: Text('/'),
        ),SizedBox(height: 10,),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.cyan, border: Border.all(color: Colors.yellow),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            "result : $result",
          ),
        ),
      ],
      ),
    ),
    );
  }
}

