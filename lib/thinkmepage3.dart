import 'package:flutter/material.dart';
import 'package:third_app/thinkmepage4.dart';
import 'package:third_app/thinkmepage5.dart';

class Subscribepage3 extends StatefulWidget {
  const Subscribepage3({Key key}) : super(key: key);

  @override
  State<Subscribepage3> createState() => _Subscribepage3State();
}

class _Subscribepage3State extends State<Subscribepage3> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: wid * 0.7,
                      height: hei * 0.10,
                      padding: EdgeInsets.only(left: 99, top: 10),
                      child: Image.network(
                          "https://www.thinkrightme.com/wp-content/uploads/2019/05/logo-4-1.png"),
                    ),
                    SizedBox(
                      width: wid * 0.15,
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 15),
                      child: IconButton(
                        icon: Icon(
                          Icons.cancel_outlined,
                          size: 37,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (c) => Adminpage()));
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Text(
                    "Unlock Mindfulness",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                ),
                SizedBox(
                  height: hei * 0.02,
                ),
                Container(
                  child: Text(
                    "Subscribe now to get full access to the ThinkRight.me.app.",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: hei * 0.04,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://thumbs.dreamstime.com/b/young-girl-doing-meditation-sitting-crossed-legs-pose-floor-cozy-pink-room-mindfulness-practice-home-young-girl-180173625.jpg"),
                        radius: 25,
                      ),
                    ),
                    SizedBox(
                      width: wid * 0.04,
                    ),
                    Container(
                        child: Text(
                      "Library of guided meditations by India's top mediatation gurus.",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    )),
                  ],
                ),
                SizedBox(
                  height: hei * 0.02,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://i.pinimg.com/736x/9e/1d/ee/9e1dee81aacd7b5f1e343a721768f107.jpg"),
                        radius: 25,
                      ),
                    ),
                    SizedBox(
                      width: wid * 0.04,
                    ),
                    Container(
                        child: Text(
                      "Music tracks to assist your meditation practices.",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    )),
                  ],
                ),
                SizedBox(
                  height: hei * 0.02,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://img.freepik.com/free-photo/girl-doing-yoga-rug-pink-background-yoga-pose-place-text-healthy-lifestyle_106745-52.jpg?w=2000"),
                        radius: 25,
                      ),
                    ),
                    SizedBox(
                      width: wid * 0.04,
                    ),
                    Container(
                        child: Text(
                      "Collection of yoga techniques & practices by yoga gurus.",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    )),
                  ],
                ),
                SizedBox(
                  height: hei * 0.02,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://i.pinimg.com/originals/41/13/54/411354243bda735a35b047646895a694.jpg"),
                        radius: 25,
                      ),
                    ),
                    SizedBox(
                      width: wid * 0.04,
                    ),
                    Container(
                        child: Text(
                      "A journal to pen down your thoughts and reflect on your day. ",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    )),
                  ],
                ),
                SizedBox(
                  height: hei * 0.02,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://img.freepik.com/free-photo/home-workout-sports-equipment-purple-yoga-block-yellow-elastic-bands-bright-pink-background_482975-167.jpg"),
                        radius: 25,
                      ),
                    ),
                    SizedBox(
                      width: wid * 0.04,
                    ),
                    Container(
                        child: Text(
                      "Meditation tools to enhance your mindfulness experience.",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    )),
                  ],
                ),
                SizedBox(
                  height: hei * 0.14,
                ),
                Container(
                  width: wid * 0.80,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "   Do you have promo code?",
                        suffixText: "Enter here",
                        suffixStyle:
                            TextStyle(color: Colors.red[300], fontSize: 18),
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontSize: 15)),
                  ),
                ),
                SizedBox(
                  height: hei * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Row(
                    children: [
                      Container(
                        child: Text("Only"),
                      ),
                      SizedBox(
                        width: wid * 0.02,
                      ),
                      Container(
                        child: Text(
                          "RS.899",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        width: wid * 0.03,
                      ),
                      Container(
                        child: Text("for 1 YEAR"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: hei * 0.01,
                ),
                Container(
                  width: wid * 0.4,
                  height: hei * 0.05,
                  padding: EdgeInsets.only(left: 27, top: 13),
                  child: Text(
                    "Subscribe Now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.red[300],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40))),
                ),
                SizedBox(
                  height: hei * 0.02,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 100),
                      child: Text(
                        "Terms & Conditions ",
                        style: TextStyle(
                            color: Colors.red[400],
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    Container(
                      child: Text(
                        "and ",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Privacy Policy ",
                        style: TextStyle(
                            color: Colors.red[400],
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: hei * 0.01,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 150),
                      child: Text(
                        "Why Subscribe? ",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(Icons.play_circle_filled)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
