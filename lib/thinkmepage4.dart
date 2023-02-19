import 'package:flutter/material.dart';

class Thinkmefrontpage extends StatefulWidget {
  const Thinkmefrontpage({Key key}) : super(key: key);

  @override
  State<Thinkmefrontpage> createState() => _ThinkmefrontpageState();
}

class _ThinkmefrontpageState extends State<Thinkmefrontpage> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Bar"),
      ),
      drawer: Container(
        width: wid * 0.70,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Drawer(
              child: Container(
                padding: EdgeInsets.only(top: 30, left: 15),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: CircleAvatar(
                            child: Image.asset(
                              "assets/mountain.jpg",
                              fit: BoxFit.fill,
                            ),
                            radius: 27,
                          ),
                        ),
                        SizedBox(
                          width: wid * 0.10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Library",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 21,
                                color: Colors.red[300]),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: hei * 0.02,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: CircleAvatar(
                            child: Image.asset(
                              "assets/mountain.jpg",
                              fit: BoxFit.fill,
                            ),
                            radius: 27,
                          ),
                        ),
                        SizedBox(
                          width: wid * 0.10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Downloads",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 21,
                                color: Colors.red[300]),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: hei * 0.02,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: CircleAvatar(
                            child: Image.asset(
                              "assets/mountain.jpg",
                              fit: BoxFit.fill,
                            ),
                            radius: 27,
                          ),
                        ),
                        SizedBox(
                          width: wid * 0.10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Favorites",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 21,
                                color: Colors.red[400]),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: hei * 0.02,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: CircleAvatar(
                            child: Image.asset(
                              "assets/mountain.jpg",
                              fit: BoxFit.fill,
                            ),
                            radius: 27,
                          ),
                        ),
                        SizedBox(
                          width: wid * 0.10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Change preference",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 21,
                                color: Colors.red[300]),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: hei * 0.02,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: CircleAvatar(
                            child: Image.asset(
                              "assets/mountain.jpg",
                              fit: BoxFit.fill,
                            ),
                            radius: 27,
                          ),
                        ),
                        SizedBox(
                          width: wid * 0.10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Remainder",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 21,
                                color: Colors.red[300]),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: hei * 0.02,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: CircleAvatar(
                            child: Image.asset(
                              "assets/mountain.jpg",
                              fit: BoxFit.fill,
                            ),
                            radius: 27,
                          ),
                        ),
                        SizedBox(
                          width: wid * 0.10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Change preference",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 21,
                                color: Colors.red[300]),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: hei * 0.02,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Container(
                            height: hei * 0.06,
                            width: wid * 0.12,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                "assets/mountain.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: wid * 0.10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Remainder",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 21,
                                color: Colors.red[300]),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
