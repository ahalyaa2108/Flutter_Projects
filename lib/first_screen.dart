import 'package:flutter/material.dart';

class FristScreen extends StatefulWidget {
  const FristScreen({Key key}) : super(key: key);

  @override
  _FristScreenState createState() => _FristScreenState();
}

class _FristScreenState extends State<FristScreen> {
  String name = "";
  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("proj name"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.redAccent,
                child: Image.asset(
                  "assets/google.png",
                  height: 123,
                ),
              ),
              Text(
                "Hello there" + " $name",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
              Image.network(
                  "https://pngimg.com/uploads/google/google_PNG19625.png"),
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  maxLength: 30,
                  obscureText: isPassword,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.amber,
                      prefixIcon: Icon(Icons.mail),
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: "enter your email",
                      suffixIcon: IconButton(
                        icon: isPassword
                            ? Icon(Icons.no_encryption_outlined)
                            : Icon(Icons.remove_red_eye),
                        onPressed: () {
                          setState(() {
                            // isPassword = !isPassword;
                            if (isPassword == false) {
                              isPassword = true;
                            } else
                              isPassword = false;
                          });
                        },
                      ),
                      hintText: "enter your email"),
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                    print("entered value is ${name}");
                  },
                ),
              ),
              Container(
                width: 400,
                height: 200,
                child: RaisedButton(
                  color: Color(0xff7972e6),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Go to home",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
