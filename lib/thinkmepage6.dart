import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buildpagetm extends StatefulWidget {
  const Buildpagetm({Key key}) : super(key: key);

  @override
  State<Buildpagetm> createState() => _BuildpagetmState();
}

class _BuildpagetmState extends State<Buildpagetm> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Masters & Guides",
        ),
      ),
      body: Container(
        child: Column(
          children: [
            buildListitem(
                "https://images.tv9hindi.com/wp-content/uploads/2022/06/shanti-mantra.jpg",
                wid,
                hei,
                [Colors.white, Colors.cyan[200]]),
          ],
        ),
      ),
    );
  }

  Container buildListitem(
      String url, double wid, double hei, List<Color> gradient) {
    return Container(
      width: wid,
      height: hei * 0.30,
      decoration: BoxDecoration(gradient: LinearGradient(colors: gradient)),
      child: Row(
        children: [
          Container(
            width: wid * 0.40,
            height: hei * 0.60,
            child: Image.network(
              url,
              height: hei * 0.60,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
