import 'package:flutter/material.dart';

class Ex extends StatelessWidget {
  const Ex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 7,
              child:Row(
                children: [
                  Expanded(
                    flex:5,
                      child:Container(
                        color: Colors.red,
                      ) ,
                  ),
                  Expanded(
                    flex:5,
                    child:Column(
                      children: [
                        Expanded(
                          flex:3,
                            child:Container(
                              color: Colors.yellow,
                            ),
                        ),
                        Expanded(
                          flex:7,
                          child:Container(
                            color: Colors.orange,
                          ),
                        )
                      ],
                    )
                  )
                ],
              )
          ),
          Expanded(
              flex: 3,
              child:Container(
                color: Colors.green,
              )
          ),
        ],
      ),
    );
  }
}
