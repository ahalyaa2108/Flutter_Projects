import 'package:flutter/material.dart';
import 'package:third_app/Login.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: wid,
        height: hei,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/564x/09/b5/eb/09b5ebcc81cf5cc6a99b416783343b4f.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(bottom: hei * 0.52)),
              Center(
                  child: Text("EMAIL CHAT BOX",
                      style: TextStyle(
                          fontSize: 27, fontWeight: FontWeight.bold))),
              SizedBox(
                height: hei * 0.02,
              ),
              Container(
                child: Text("Try to be a rainbow in someone's life",
                    style: TextStyle(
                      fontSize: 19,
                    )),
              ),
              SizedBox(
                height: hei * 0.26,
              ),
              // ignore: deprecated_member_use
              Container(
                  width: wid * 0.80,
                  height: hei * 0.06,
                  child: OutlineButton(
                    disabledBorderColor: Colors.blueAccent,
                    highlightedBorderColor: Colors.blue,
                    highlightColor: Colors.amber,
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Login()));
                    },
                    child: Text("Get Started",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        )),
                  )),
              IconButton(
                icon: Icon(Icons.keyboard_arrow_right),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (c) => Login()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
