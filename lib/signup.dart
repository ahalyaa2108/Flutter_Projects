import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:third_app/Login.dart';
import 'package:third_app/gmail.dart';

class Signup extends StatefulWidget {
  const Signup({Key key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var primaryColor = Color(0xff7972e6);
  String fname = "";
  String email = "", pass = "";

  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 65)),
            IconButton(
              icon: Icon(Icons.keyboard_backspace_rounded),
              onPressed: () {
                Navigator.of(context)
                    .pop(MaterialPageRoute(builder: (c) => Login()));
              },
            ),
            Center(
              child: Container(
                child: Text("SIGN UP PAGE",
                    style:
                        TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: hei * 0.05,
            ),
            Center(
              child: Container(
                child: Text("CREATE ACCOUNT",
                    style: TextStyle(
                        fontSize: 30,
                        color: primaryColor,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: hei * 0.10,
            ),
            Center(
              child: Container(
                width: wid * 0.80,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "FirstName",
                      hintText: "Enter your name",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person)),
                  onChanged: (v) {
                    fname = v;
                    if (fname.length == 0) {
                      print("False");
                    } else {
                      print("True");
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: hei * 0.02,
            ),
            Center(
              child: Container(
                width: wid * 0.80,
                child: TextField(
                    decoration: InputDecoration(
                        labelText: "Email ID",
                        hintText: "Enter your Email ID",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.mail)),
                    onChanged: (v) {
                      email = v;
                      if (email.contains("@gmail.com")) {
                        print("True");
                      } else {
                        print("False");
                      }
                      print("CHANGED VALUE $v EMAIL VSLUE $email");
                    }),
              ),
            ),
            SizedBox(
              height: hei * 0.02,
            ),
            Center(
              child: Container(
                width: wid * 0.80,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Atleast 6 characters",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility)),
                  onChanged: (ve) {
                    pass = ve;
                    if (pass.length > 6) {
                      print("Valid password");
                    } else {
                      print("Invalid password");
                    }
                    print("Changed Value $ve Password $pass");
                  },
                ),
              ),
            ),
            SizedBox(
              height: hei * 0.15,
            ),
            // ignore: deprecated_member_use
            Center(
              child: Container(
                width: wid * 0.70,
                height: hei * 0.05,
                // ignore: deprecated_member_use
                child: OutlineButton(
                  color: primaryColor,
                  highlightColor: primaryColor,
                  textColor: primaryColor,
                  child: Text("JOIN NOW",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  onPressed: () {
                    var snackUndo = SnackBar(
                      content: Text("UNDO ACTION PERFORMED!!"),
                    );

                    if (fname.length == 0) {
                      print("NAME NOT SATISFIED");
                      var snack = SnackBar(
                        content: Text("NAME NOT SATISFIED"),
                        action: SnackBarAction(
                          label: "Undo",
                          onPressed: () {
                            log("UNDO CLICKED");
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackUndo);
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snack);
                    } else {
                      print("NAME SATISFIED");
                      if (email.contains("@gmail.com")) {
                        print("EMAIL SATISFIED");
                        if (pass.length > 6) {
                          print("Valid password Move to next screen");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (c) => Outlook(
                                    email: email,
                                    name: fname,
                                    password: pass,
                                  )));
                        } else {
                          print("Invalid password");
                          var snack =
                              SnackBar(content: Text("Invalid password"));
                          ScaffoldMessenger.of(context).showSnackBar(snack);
                        }
                      } else {
                        print("EMAIL NOT SATISFIED");
                        var snack = SnackBar(
                            content: Container(
                                height: 100 / 3,
                                child: Text("EMAIL NOT SATISFIED")));
                        ScaffoldMessenger.of(context).showSnackBar(snack);
                      }
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
