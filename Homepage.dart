import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.network("https://st.depositphotos.com/1415902/2879/v/450/depositphotos_28793833-stock-illustration-car-wash-service.jpg",
          height: 50,width: 70,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child:Container(
                        height: 500,
                        width: 500,
                        decoration: BoxDecoration(border: Border.all(width:2 )),
                        child: Stack(
                          children: [
                            Image.network("https://encrypted-tbn0.gstatic.com"
                                "/images?q=tbn:ANd9GcS7H73AV8RN_p2dakBRU47bA6rG8dsH_wrV0"
                                "ry0kvqylmGXFMj_Q-b_z8Wc51DvxhcdCgs&usqp=CAU",alignment: Alignment.topCenter,),
                            Text("Normal Car Wash",style: TextStyle(fontSize: 20),)
                          ],
                        )
                      ),
                  ),
                  Expanded(
                    flex: 3,
                    child:Container(
                        height: 500,
                        width: 500,
                        decoration: BoxDecoration(border: Border.all(width:2 )),
                        child: Stack(
                          children: [
                            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:"
                                "ANd9GcSTmXIxefgFvv2pMdiYdI8XMeo2YEvvj9XDHg&s",alignment: Alignment.topCenter,),
                            Text("Premium Car Wash",style: TextStyle(fontSize: 20),)
                          ],
                        )
                    ),
                  )
                ],
              )
          ),
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child:Container(
                        height: 500,
                        width: 500,
                        decoration: BoxDecoration(border: Border.all(width:2 )),
                        child: Stack(
                          children: [
                            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxdB6OZ55d6s"
                                "5VkYduwunUnWbEQZTbWpcmZQ&s",alignment: Alignment.topCenter,),
                            Text("Interier Cleaning",style: TextStyle(fontSize: 20),)
                          ],
                        )
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child:Container(
                        height: 500,
                        width: 500,
                        decoration: BoxDecoration(border: Border.all(width:2 )),
                        child: Stack(
                          children: [
                            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:"
                                "ANd9GcSUX36408vUpNNkoy7VeLDjoK6JvKaf1EK-Gg&s",alignment: Alignment.topCenter,),
                            Text("Full Car Wash",style: TextStyle(fontSize: 20),)
                          ],
                        )
                    ),
                  )
                ],
              )
          ),
        ],
      )
    );
  }
}
