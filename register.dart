

import 'package:ayaj216/Login.dart';
import 'package:ayaj216/Login2.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final _key=GlobalKey<FormState>();
    final RegExp username=RegExp(r"^[a-zA-Z]$");
    final RegExp email=RegExp(r"@gmail.com$");
    final RegExp password=RegExp(r"^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{8,}$");
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Colors.blue,
        centerTitle: true,
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
                //for username
                Container(
                  height: 30,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.black87),
                        suffixIcon: Icon(Icons.account_circle),
                        hintText: "Enter Username",
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
                          return "Enter Username";
                        }
                        else if(!username.hasMatch(value))
                        {
                          return "Invalid Username";
                        }
                      },
                    )),
                //for email
                Container(
                  height: 30,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.black87),
                        suffixIcon: Icon(Icons.email),
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
                //for password
                Container(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Password",
                      labelStyle: TextStyle(color: Colors.black87),
                      suffixIcon: Icon(Icons.lock),
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
                        return "Enter Password";
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
                //for confirm password
                Container(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Confirm Password",
                      labelStyle: TextStyle(color: Colors.black87),
                      suffixIcon: Icon(Icons.lock),
                        hintText: "Enter Confirm Password",
                      hintStyle: TextStyle(color: Colors.black87,),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87,width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87,width: 1.5),
                      ),
                    ),
                    validator: (value) {
                      if(value!.isEmpty) {
                        return "Enter Confirm Password";
                      }
                      else if(password!=value)
                      {

                      }

                    },
                  ),
                ),
                //for submit button
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
                  child:Text("Register",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
                ),
                Container(
                  height: 30,
                ),
                Text("Already have an account?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,),),
                InkWell(
                  child: Text("Login",style: TextStyle(color: Colors.white),),
                  onTap: () =>{
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login2(),))
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

