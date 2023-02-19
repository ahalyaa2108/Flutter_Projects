import 'package:flutter/material.dart';
import 'package:third_app/first_screen.dart';
import 'package:third_app/homescreen.dart';
import 'package:third_app/signup.dart';

class NvaigatorButtons extends StatefulWidget {
  const NvaigatorButtons({Key key}) : super(key: key);

  @override
  State<NvaigatorButtons> createState() => _NvaigatorButtonsState();
}

class _NvaigatorButtonsState extends State<NvaigatorButtons> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: wid * 0.50,
              height: hei * 0.05,
              child: OutlineButton(
                child: Text(
                  "PUSH",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Signup()));
                },
              ),
            ),
            SizedBox(
              height: hei * 0.04,
            ),
            Container(
              width: wid * 0.50,
              height: hei * 0.05,
              child: OutlineButton(
                child: Text(
                  "POP",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[600]),
                ),
                onPressed: () {
                  Navigator.of(context).pop(
                      MaterialPageRoute(builder: (context) => Homescreen()));
                },
              ),
            ),
            SizedBox(
              height: hei * 0.04,
            ),
            Container(
              width: wid * 0.50,
              height: hei * 0.05,
              child: OutlineButton(
                child: Text(
                  "PUSH REPLACEMENT",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800]),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => FristScreen()));
                },
              ),
            ),
            SizedBox(
              height: hei * 0.04,
            ),
            Container(
              width: wid * 0.50,
              height: hei * 0.05,
              child: OutlineButton(
                child: Text(
                  "CAN POP",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink[300]),
                ),
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    print("CAN POP IS ACTIVATED");
                  } else {
                    var snack = SnackBar(content: Text("CAN POP FAILED"));
                    ScaffoldMessenger.of(context).showSnackBar(snack);
                    print("CAN POP FAILED");
                  }
                },
              ),
            ),
            SizedBox(
              height: hei * 0.04,
            ),
            Container(
              width: wid * 0.50,
              height: hei * 0.05,
              child: OutlineButton(
                  child: Text(
                    "POP UNTIL",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                  ),
                  onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}
