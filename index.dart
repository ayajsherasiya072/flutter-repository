import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController tc1= TextEditingController();
  TextEditingController tc2= TextEditingController();
  TextEditingController tc3= TextEditingController();
  String str1="";
  String str2="";
  String str3="";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: tc1,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "enter email",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red,width: 5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red,width: 5),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: tc2,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "enter password",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue,width: 5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue,width: 5),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: tc3,
              decoration: InputDecoration(
                labelText: "Re-password",
                hintText: "enter re-password",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green,width: 5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green,width: 5),
                ),
              ),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              onPressed: (){
            setState(() {
              str1= tc1.text;
              str2= tc2.text;
              str3= tc3.text;
            });
          }, child: Text("Print")),
          Text("Email: ${str1}"),
          Text("Password: ${str2}"),
          Text("Re password: ${str3}"),
        ],
      ),
    );
  }
}
