import 'package:flutter/material.dart';
import 'package:third_app/nextpage.dart';

class Frontpage extends StatefulWidget {
  const Frontpage({Key key}) : super(key: key);

  @override
  State<Frontpage> createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("VERZEO"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: wid,
              height: hei,
              // ignore: deprecated_member_use
              child: Center(
                child: RaisedButton(
                  color: Colors.amber,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => Nextpage()));
                  },
                  child: Text("HARSHINI",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
