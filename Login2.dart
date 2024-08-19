import 'package:ayaj216/register.dart';
import 'package:flutter/material.dart';

class Login2 extends StatelessWidget {
  const Login2({super.key});

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
      body: Stack(
        children: [
          Container(
              height: 570,
              width: 1400,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWjaSnijpjuscl3nMkUezgu9xEWu-mo7R5Gg&s",
                fit: BoxFit.cover,opacity: const AlwaysStoppedAnimation(.7),)),

          Form(
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
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                          labelText: "Email",
                          labelStyle: TextStyle(color: Colors.black87),
                          // suffixIcon: Icon(Icons.email),
                          hintText: "Enter Email",
                          hintStyle: TextStyle(color: Colors.black87,),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87,width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87,width: 1.5),
                          ),
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
                        prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.black87),
                        // suffixIcon: Icon(Icons.lock),
                          hintText: "Enter Password",
                        hintStyle: TextStyle(color: Colors.black87,),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87,width: 1.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87,width: 1.5),
                        ),
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
                    child:Text("Submit",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),)
                  ,),
                  Container(
                    height: 30,
                  ),
                  Text("Don't have an account?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,),),
                  InkWell(
                      child: Text("Register",style: TextStyle(color: Colors.white),),
                      onTap: () =>{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),))
                      }
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
