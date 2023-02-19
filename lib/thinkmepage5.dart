import 'package:flutter/material.dart';
import 'package:third_app/thinkmepage3.dart';
import 'package:google_fonts/google_fonts.dart';

class Adminpage extends StatefulWidget {
  const Adminpage({Key key}) : super(key: key);

  @override
  State<Adminpage> createState() => _AdminpageState();
}

class _AdminpageState extends State<Adminpage> {
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
                    buildAppbar(
                        "Library",
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbsaps7Bqlyka8Brd0iDD9VVfDISkKB3B8qIrZj64uUKtHhdwlAkkRMxNUjpOYXHU4pNY&usqp=CAU",
                        wid,
                        hei),
                    SizedBox(
                      height: hei * 0.02,
                    ),
                    buildAppbar(
                        "Reference",
                        "https://t4.ftcdn.net/jpg/02/33/16/83/360_F_233168305_OmIImyrTTYun0gJIpw8U3BwUCFh3rHu6.jpg",
                        wid,
                        hei),
                    SizedBox(
                      height: hei * 0.02,
                    ),
                    buildAppbar(
                        "Downloads",
                        "https://cdn.iconscout.com/icon/free/png-256/cloud-448-112590.png",
                        wid,
                        hei),
                    SizedBox(
                      height: hei * 0.02,
                    ),
                    buildAppbar(
                        "Change Preference",
                        "https://thumbs.dreamstime.com/b/grunge-red-your-reference-word-star-icon-round-rubber-seal-stamp-white-background-207630719.jpg",
                        wid,
                        hei),
                    SizedBox(
                      height: hei * 0.02,
                    ),
                    buildAppbar(
                        "Remainder",
                        "https://static.vecteezy.com/system/resources/previews/002/397/820/non_2x/alarm-clock-in-pastel-pink-and-blue-illustration-free-vector.jpg",
                        wid,
                        hei),
                    SizedBox(
                      height: hei * 0.02,
                    ),
                    buildAppbar(
                        "Favorites",
                        "https://png.pngtree.com/png-vector/20190114/ourlarge/pngtree-vector-favorite-icon-png-image_313518.jpg",
                        wid,
                        hei),
                    SizedBox(
                      height: hei * 0.02,
                    ),
                    buildAppbar(
                        "My Profile",
                        "https://w7.pngwing.com/pngs/980/304/png-transparent-computer-icons-user-profile-avatar-heroes-silhouette-avatar.png",
                        wid,
                        hei),
                    SizedBox(
                      height: hei * 0.04,
                    ),
                    Container(
                        width: wid * 0.50,
                        height: hei * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(39.0),
                          color: Colors.red[200],
                        ),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.red[300]),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        side: BorderSide(color: Colors.red)))),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (c) => Subscribepage3()));
                            },
                            child: Text(
                              "Subscribe Now",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ))),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                  width: wid * 0.45,
                  padding: EdgeInsets.only(left: 10, top: 30),
                  child: Image.network(
                      "https://www.thinkrightme.com/wp-content/uploads/2019/05/logo-4-1.png")),
              SizedBox(
                height: hei * 0.03,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: wid * 0.90,
                        height: hei * 0.23,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.cyan[50]]),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: Row(
                          children: [
                            Container(
                              width: wid * 0.40,
                              height: hei * 2.0,
                              child: Image.network(
                                "https://i.pinimg.com/originals/78/be/5b/78be5b2bdb40df4bf1cc9855b421257a.jpg",
                              ),
                            ),
                            SizedBox(
                              width: wid * 0.02,
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(bottom: 10, right: 30),
                                    child: Text(
                                      "International yoga Day Offer",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.red[300]),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Text(
                                      "Subscribe Now and Get 50% off ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: hei * 0.002,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 40),
                                    child: Text(
                                      "on your annual subscription ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: hei * 0.002,
                                  ),
                                  Container(
                                    width: wid * 0.48,
                                    padding: EdgeInsets.only(right: 60),
                                    child: OutlineButton(
                                        child: Text(
                                          "USE CODE: YOGA",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        onPressed: () {}),
                                  ),
                                  Container(
                                    width: wid * 0.48,
                                    padding: EdgeInsets.only(right: 70),
                                    child: RaisedButton(
                                        color: Colors.red[300],
                                        child: Text(
                                          "SUBSCRIBE NOW",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                        onPressed: () {}),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 110),
                                    child: Text(
                                      "*LIMITED PERIOD OFFER",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: hei * 0.02,
              ),
              Stack(
                children: [
                  Container(
                    width: wid * 0.90,
                    height: hei * 0.24,
                    color: Colors.pink[100],
                    child: Image.network(
                        "https://img.freepik.com/free-photo/home-workout-sports-equipment-purple-yoga-block-yellow-elastic-bands-bright-pink-background_482975-167.jpg"),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 68, left: 150),
                      child: IconButton(
                        icon: Icon(
                          Icons.play_circle_outline,
                          size: 60,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (c) => Subscribepage3()));
                        },
                      )),
                ],
              ),
              SizedBox(
                height: hei * 0.03,
              ),
              Container(
                padding: EdgeInsets.only(right: 130),
                child: Text(
                  "Daily Affirmation By BK Shivani",
                  style: GoogleFonts.pacifico(
                      fontSize: 19, fontWeight: FontWeight.w100),
                ),
              ),
              SizedBox(
                height: hei * 0.02,
              ),
              Container(
                width: wid * 0.90,
                height: hei * 0.17,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        colors: [Colors.cyan[100], Colors.white]),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 2,
                          color: Colors.black.withOpacity(0.3))
                    ]),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 35),
                        width: wid * 0.80,
                        child: Text(
                          "\"I choose how I feel, my mood depends on me, independent of people and situation.\"",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontFamily: "",
                              fontSize: 13),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: hei * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 3, left: 120),
                          child: FlatButton(
                            child: Text("Affirm Now",
                                style: TextStyle(
                                    color: Colors.red[300],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 100),
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.red[300],
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: hei * 0.02,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 200, left: 30),
                    child: Text(
                      "Morning Zen",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: hei * 0.01,
              ),
              Stack(
                overflow: Overflow.visible,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: wid * 0.92,
                    height: hei * 0.35,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.blue[900], Colors.pink[700]]),
                        borderRadius: BorderRadius.circular(15)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        "https://www.easemytrip.com/travel/img/valley-of-flowers-n.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 78,
                    left: 150,
                    child: Container(
                      child: IconButton(
                        icon: Icon(
                          Icons.play_circle_outline,
                          size: 60,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (c) => Subscribepage3()));
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Column(
                      children: [
                        Container(
                          width: wid * 0.92,
                          height: hei * 0.12,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.blue[900], Colors.pink[700]]),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 18, right: 170),
                                child: Text(
                                  "Being Okay With Being Alone",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              SizedBox(
                                height: hei * 0.02,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 25),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        "https://media.istockphoto.com/photos/charming-female-on-yellow-backdrop-picture-id936419870?k=20&m=936419870&s=612x612&w=0&h=X9gdSjwNCUxRt_1SkZAyxCWDCIggkxvokBgtZCljBS4=",
                                      ),
                                      radius: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: wid * 0.04,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "Natasha DS",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(bottom: 10, left: 180),
                                    child: Text(
                                      "Play",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: hei * 0.03,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 200, left: 30),
                    child: Text(
                      "Yoga of the week",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: hei * 0.02,
              ),
              Stack(
                overflow: Overflow.visible,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: wid * 0.92,
                    height: hei * 0.35,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.blue[900], Colors.pink[700]]),
                        borderRadius: BorderRadius.circular(15)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        "https://cdn.wallpapersafari.com/79/81/dtWQjE.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 78,
                    left: 150,
                    child: Container(
                      child: IconButton(
                        icon: Icon(
                          Icons.play_circle_outline,
                          size: 60,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (c) => Subscribepage3()));
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Column(
                      children: [
                        Container(
                          width: wid * 0.92,
                          height: hei * 0.12,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.yellow[100],
                                Colors.orange[900]
                              ]),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 18, right: 190),
                                child: Text(
                                  "Brain Yoga Challenges",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              SizedBox(
                                height: hei * 0.02,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 30),
                                    child: Text(
                                      "Sabrina Merchant",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  SizedBox(
                                    width: wid * 0.04,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(bottom: 10, left: 180),
                                    child: Text(
                                      "Play",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildAppbar(String textName, String url, wid, hei) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Container(
            height: hei * 0.06,
            width: wid * 0.12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(
                "$url",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        SizedBox(
          width: wid * 0.08,
        ),
        Container(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            "$textName",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 21,
                color: Colors.red[300]),
          ),
        ),
      ],
    );
  }
}
