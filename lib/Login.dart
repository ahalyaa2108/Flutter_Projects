import 'package:flutter/material.dart';
import 'package:third_app/gmail.dart';
import 'package:third_app/signup.dart';

import 'first_screen.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var primaryColor = Color(0xff7972e6);
  String email = "";
  String passwordText = "";
  bool password = false;
  bool isValidEmail = false;

  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: wid,
          // color: Colors.amberAccent,
          child: Padding(
            padding: EdgeInsets.only(
                top: hei * 0.13, left: wid * 0.10, right: wid * 0.10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome to Email Chat Club ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Discover this amazing app by creating new friends ",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: hei * 0.20,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: TextField(
                    onChanged: (v) {
                      email = v;
                      if (v.contains("@")) {
                        print("VALID EMAIL");
                        isValidEmail = true;
                      } else {
                        print("NOT A VALID EMAIL");
                      }

                      // print("CHANGED VALUE $v PASSSWORD VSLUE $email");
                    },
                    decoration: InputDecoration(
                        hintText: "Email ID", prefixIcon: Icon(Icons.person)),
                  ),
                ),
                // SizedBox(
                //  height: hei * 0.01,
                //),
                Container(
                  child: TextField(
                    maxLength: 10,
                    onChanged: (v) {
                      passwordText = v;
                      if (passwordText.length > 8) {
                        print("Valid password");
                      }
                      //print("CHANGED VALUE $v PASSSWORD VSLUE $passwordText");
                      else {
                        print("Invalid password");
                      }
                    },
                    obscureText: password,
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                          icon: password
                              ? Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                )
                              : Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                          onPressed: () {
                            setState(() {
                              if (password == false) {
                                password = true;
                              } else {
                                password = false;
                              }
                            });
                          }),
                    ),
                  ),
                ),
                SizedBox(
                  height: hei * 0.30,
                ),

                Container(
                  width: wid * 0.90,
                  height: hei * 0.05,
                  child: RaisedButton(
                    color: Color(0xff7972e6),
                    onPressed: () {
                      print("Sign in");
                      if (email == "test@gmail.com") {
                        if (passwordText == "123456ahal") {
                          if (Navigator.canPop(context))
                            Navigator.of(context).pop();
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (c) => Outlook()));
                        } else {
                          var snack =
                              SnackBar(content: Text("Password not satisfied"));
                          ScaffoldMessenger.of(context).showSnackBar(snack);
                        }
                      } else {
                        print("WRONG EMAIL AND WRONG PASS");
                        var snack =
                            SnackBar(content: Text("Email not satisfied"));
                        ScaffoldMessenger.of(context).showSnackBar(snack);
                      }
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                // ignore: deprecated_member_use
                SizedBox(
                  height: 20,
                ),

                Container(
                  width: wid * 0.90,
                  height: hei * 0.05,
                  child: OutlineButton(
                    focusColor: primaryColor,
                    // splashColor: Colors.blueGrey,
                    // highlightColor: primaryColor,
                    highlightedBorderColor: primaryColor,
                    onPressed: () {
                      print("Sign up");
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Signup()));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Color(0xff7972e6),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
