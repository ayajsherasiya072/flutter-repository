import 'package:flutter/material.dart';

class Ex2 extends StatelessWidget {
  const Ex2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
              )
          ),
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex:3,
                      child:Container(
                        color: Colors.yellow,
                      )
                  ),
                  Expanded(
                      flex:7,
                      child:Container(
                        color: Colors.orange,
                      )
                  )
                ],
              )
          ),
          Expanded(
              flex: 5,
              child: Container(
                color: Colors.blue,
              )
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
              )
          ),

        ],
      ),
    );
  }
}
