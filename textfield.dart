import 'package:flutter/material.dart';

class Demo1 extends StatefulWidget {
  const Demo1({super.key});

  @override
  State<Demo1> createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  TextEditingController tc= TextEditingController();
  String temp="";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: tc,
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              temp=tc.text;

            },);;
          }, child: Text("print"),),
          Text("data: ${temp}"),
        ],
      ),);
  }
}
