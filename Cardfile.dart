import 'package:flutter/material.dart';

class Cardfile extends StatelessWidget {
  const Cardfile({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> item=["hii","hello","hii","hello","hii","hello","hii","hello","hii","hello","hii","hello",];
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
        backgroundColor: Colors.blue,
      ),
      body:ListView.builder(itemCount: item.length,itemBuilder: (context, index) {
          return Container(height: 200,width: 200,child: Card(color: Colors.greenAccent,child: Center(child: Text(item[index],style: TextStyle(color: Colors.white,fontSize: 30),))));
      },),
    );
  }
}
