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
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 500,
                          width: 500,
                          decoration: BoxDecoration(border: Border.all(width:2 )),
                          child: Stack(
                            children: [
                              Container(
                                width: 300,
                                height: 170,
                                child: Image.network("https://encrypted-tbn0.gstatic.com"
                                    "/images?q=tbn:ANd9GcS7H73AV8RN_p2dakBRU47bA6rG8dsH_wrV0"
                                    "ry0kvqylmGXFMj_Q-b_z8Wc51DvxhcdCgs&usqp=CAU",alignment: Alignment.topCenter,fit: BoxFit.cover,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 170),
                                child: Container(
                                  child: Text("Exterior Wash",style: TextStyle(fontSize: 20),),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 200),
                                child: Container(
                                  child: Text("₹500",style: TextStyle(fontSize: 20),),
                                ),
                              )
                            ],
                          )
                        ),
                      ),
                  ),
                  Expanded(
                    flex: 3,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 500,
                          width: 500,
                          decoration: BoxDecoration(border: Border.all(width:2 )),
                          child: Stack(
                            children: [
                              Container(
                                height: 170,
                                width: 300,
                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:"
                                    "ANd9GcSTmXIxefgFvv2pMdiYdI8XMeo2YEvvj9XDHg&s",
                                  alignment: Alignment.topCenter,fit: BoxFit.cover,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 170),
                                child: Container(
                                  child: Text("Premium Car Wash",style: TextStyle(fontSize: 20),),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 200),
                                child: Container(
                                  child: Text("₹2000",style: TextStyle(fontSize: 20),),
                                ),
                              )
                            ],
                          )
                      ),
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
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 500,
                          width: 500,
                          decoration: BoxDecoration(border: Border.all(width:2 )),
                          child: Stack(
                            children: [
                              Container(
                                height: 170,
                                width: 300,
                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxdB6OZ55d6s"
                                    "5VkYduwunUnWbEQZTbWpcmZQ&s",
                                  alignment: Alignment.topCenter,fit: BoxFit.cover,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 170),
                                child: Container(
                                  child: Text("Interier Cleaning",style: TextStyle(fontSize: 20),),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 200),
                                child: Container(
                                  child: Text("₹700",style: TextStyle(fontSize: 20),),
                                ),
                              )
                            ],
                          )
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 500,
                          width: 500,
                          decoration: BoxDecoration(border: Border.all(width:2 )),
                          child: Stack(
                            children: [
                             Container(
                               height: 170,
                               width: 300,
                               child:  Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:"
                                   "ANd9GcSUX36408vUpNNkoy7VeLDjoK6JvKaf1EK-Gg&s",
                                 alignment: Alignment.topCenter,fit: BoxFit.cover,),
                             ),
                              Padding(
                                padding: const EdgeInsets.only(top: 170),
                                child: Container(
                                  child: Text("Full Car Wash",style: TextStyle(fontSize: 20),),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 200),
                                child: Container(
                                  child: Text("₹1000",style: TextStyle(fontSize: 20),),
                                ),
                              )
                            ],
                          )
                      ),
                    ),
                  )
                ],
              )
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
      ],
      ),
    );
  }
}
