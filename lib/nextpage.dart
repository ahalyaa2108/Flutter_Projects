import 'package:flutter/material.dart';
import 'package:third_app/verzeo.dart';

class Nextpage extends StatefulWidget {
  const Nextpage({Key key}) : super(key: key);

  @override
  State<Nextpage> createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {
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
                  "https://i.pinimg.com/564x/b4/df/86/b4df86f185b4ef42e77e3a869efe302e.jpg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            IconButton(
              padding: EdgeInsets.only(top: 80),
              icon: Icon(Icons.keyboard_backspace_rounded),
              onPressed: () {
                Navigator.of(context)
                    .pop(MaterialPageRoute(builder: (c) => Frontpage()));
              },
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(top: hei * 0.40),
                child: Text("WELCOME HARSHINI",
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
