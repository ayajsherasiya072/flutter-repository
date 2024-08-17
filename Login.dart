import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final _key=GlobalKey<FormState>();
    final RegExp email=RegExp(r"@gmail.com$");
    final RegExp password=RegExp(r"^[a-zA-Z][0-9]{8}$");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("LogIn"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 400,
          color: Colors.lightBlue.withOpacity(0.2),
          child: Form(
              key: _key,
              child: Column(
            children: [
              Container(
                height: 30,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: "Enter Email",
                    ),
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Enter Email";
                      }
                      else if(!email.hasMatch(value))
                      {
                        return "Invalid Email Formate";
                      }
                    },
                  )),
              Container(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Enter Password"
                  ),
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return "Enter Email";
                    }
                    else if(value.length <8){
                      return "Password Shold be 8 char";
                    }
                    else if(!password.hasMatch(value))
                    {
                      return "Invalid Password";
                    }

                  },
                ),
              ),
              Container(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  if(_key.currentState!.validate())
                  {
                    print("succces");
                  }
              },
                child:Text("Submit")
              ,)
            ],
          )),
        ),
      ),
    );
  }
}
