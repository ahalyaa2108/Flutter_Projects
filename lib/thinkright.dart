import 'package:flutter/material.dart';
import 'package:third_app/thinkmepage2.dart';

class Recreation extends StatefulWidget {
  const Recreation({Key key}) : super(key: key);

  @override
  State<Recreation> createState() => _RecreationState();
}
class _RecreationState extends State<Recreation> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                  width: wid * 0.70,
                  height: hei * 0.17,
                  child: Image.network(
                      "https://play-lh.googleusercontent.com/QcZcMzoLAj7EnAQkGbwJXi0_Kr1Bifr_PWU6Hu4DqTeI7fYCEnq6eE3rlUa7z_8yd4g")),
            ),
            SizedBox(
              height: hei * 0.15,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.dlpng.com/static/png/6727808_preview.png"),
                radius: 140,
              ),
            ),
            SizedBox(
              height: hei * 0.25,
            ),
            Row(children: [
              SizedBox(
                width: wid * 0.27,
              ),
              Container(
                child: Text(
                  "Powered by JetSynthesys",
                  style: TextStyle(
                    color: Colors.red[200],
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                width: wid * 0.10,
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey[400],
                  size: 31,
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (c) => Loginpage2()));
                },
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
