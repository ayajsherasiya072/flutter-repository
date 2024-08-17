import 'package:flutter/material.dart';

class Navigate extends StatelessWidget {
  const Navigate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: ElevatedButton(
           child:Text("second page"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Secondpage(),),);
            },
          ),)
    );
  }
}

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("secondpage"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}

