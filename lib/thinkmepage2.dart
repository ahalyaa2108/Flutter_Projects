import 'package:flutter/material.dart';
import 'package:third_app/thinkmepage3.dart';

class Loginpage2 extends StatefulWidget {
  const Loginpage2({Key key}) : super(key: key);

  @override
  State<Loginpage2> createState() => _Loginpage2State();
}

class _Loginpage2State extends State<Loginpage2> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: wid,
                height: hei * 0.24,
                color: Colors.pink[50],
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i.dlpng.com/static/png/6727808_preview.png"),
                    radius: 90,
                  ),
                ),
              ),
              SizedBox(
                height: hei * 0.02,
              ),
              Container(
                width: wid * 0.87,
                height: hei * 0.40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Container(
                      width: wid * 0.7,
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        "Start your journey of positivity and wellness!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                    ),
                    SizedBox(
                      height: hei * 0.02,
                    ),
                    Container(
                      width: wid * 0.70,
                      child: Text(
                        "Phone number",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: hei * 0.02,
                    ),
                    Container(
                      width: wid * 0.7,
                      color: Colors.grey[100],
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              topRight: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                              bottomRight: Radius.circular(45),
                            )),
                            labelText: ("  Enter Mobile Number"),
                            labelStyle: TextStyle(fontSize: 12),
                            hintText: ("+91")),
                      ),
                    ),
                    SizedBox(
                      height: hei * 0.02,
                    ),
                    Container(
                      width: wid * 0.7,
                      child: Text(
                        "A one time password will be sent to the mobile number for verfication",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w300,
                            fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: hei * 0.02,
                    ),
                    Container(
                      width: wid * 0.4,
                      height: hei * 0.06,
                      padding: EdgeInsets.only(top: 18, left: 45),
                      child: Text(
                        "Begin Now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 17),
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
                          padding: EdgeInsets.only(left: 60),
                          child: Text(
                            "By registering you agree to the",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Terms & Conditions",
                            style: TextStyle(
                                color: Colors.blue[500],
                                fontWeight: FontWeight.w400,
                                fontSize: 13),
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
              Container(
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 30,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (c) => Subscribepage3()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
