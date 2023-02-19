import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:third_app/thinkmepage3.dart';
import 'package:third_app/thinkmepage5.dart';
import 'package:google_fonts/google_fonts.dart';

class Offerpage extends StatefulWidget {
  const Offerpage({Key key}) : super(key: key);

  @override
  State<Offerpage> createState() => _OfferpageState();
}

class _OfferpageState extends State<Offerpage> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_outlined,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (c) => Adminpage()));
                        },
                      )),
                  Container(
                    padding: EdgeInsets.only(left: 89, top: 20),
                    child: Text(
                      "Offers for You",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: hei * 0.02,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 35, right: 20),
                    child: Text(
                      "Checkout the exclusive offers specially curated for you....",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: hei * 0.02,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                      ),
                    ]),
                width: wid * 0.90,
                height: hei * 0.21,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 17, right: 18, top: 12),
                      child: Text(
                        "Strengthen your mental and physical with ThinkRight.me. Subscribe now to get 6 months free on your annual subscription! Offer valid for Limited Period ONLY!",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: hei * 0.03,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 260),
                      child: Text(
                        "User Code",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    SizedBox(
                      height: hei * 0.006,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 19),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 18, top: 13),
                            width: wid * 0.2,
                            height: hei * 0.046,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(blurRadius: 0.05),
                                ],
                                color: Colors.deepOrange[50]),
                            child: Text(
                              "EXTRA6",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            width: wid * 0.39,
                          ),
                          Container(
                            width: wid * 0.2,
                            height: hei * 0.046,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.redAccent[100]),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        side:
                                            BorderSide(color: Colors.red[100])),
                                  )),
                              child: Text(
                                "Apply",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (c) => Subscribepage3()));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
