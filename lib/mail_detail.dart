import 'package:flutter/material.dart';
import 'package:third_app/gmail.dart';

class MailDetail extends StatelessWidget {
  final String index;
  final String title;
  const MailDetail({Key key, this.index, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Row(
          children: [
            IconButton(
              iconSize: 25,
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => Outlook()));
              },
            ),
            SizedBox(
              width: wid * 0.45,
            ),
            Container(
              child: Icon(
                Icons.archive_outlined,
                size: 27,
              ),
            ),
            SizedBox(
              width: wid * 0.05,
            ),
            Container(
              child: Icon(
                Icons.delete_outline,
                size: 27,
              ),
            ),
            SizedBox(
              width: wid * 0.05,
            ),
            Container(
              child: Icon(
                Icons.mail_outline,
                size: 27,
              ),
            ),
            SizedBox(
              width: wid * 0.05,
            ),
            Container(
              child: Icon(
                Icons.more_vert,
                size: 27,
              ),
            ),
          ],
        ),
        SizedBox(
          height: hei * 0.10,
        ),
        Container(
          child: Text("Gmail $title", style: TextStyle(fontSize: 20)),
        ),
      ]),
    ));
  }
}
