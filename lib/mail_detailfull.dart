import 'package:flutter/material.dart';
import 'package:third_app/gmail.dart';

class Maildetail extends StatefulWidget {
  final String title;
  final String index;
  final String description;

  const Maildetail({Key key, this.title, this.index, this.description})
      : super(key: key);

  @override
  State<Maildetail> createState() => _MaildetailState();
}

class _MaildetailState extends State<Maildetail> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                height: hei * 0.04,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 23),
                    width: wid * 0.90,
                    child: Text(
                      // "You are invited to participate in the world's biggest coding competition",
                      "${widget.title}",
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(
                    width: wid * 0.04,
                  ),
                  Container(
                    child: Icon(Icons.star_border),
                  ),
                ],
              ),
              SizedBox(
                height: hei * 0.01,
              ),
              Container(
                  width: wid * 0.19,
                  height: hei * 0.02,
                  padding: EdgeInsets.only(left: 23),
                  child: RaisedButton(
                    child: Text(
                      "Inbox",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                    ),
                    onPressed: () {},
                  )),
              SizedBox(
                height: hei * 0.03,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      radius: 27,
                      child: Text("C",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.normal)),
                      backgroundColor: Colors.purple[300],
                    ),
                  ),
                  SizedBox(
                    width: wid * 0.04,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 25),
                    child: Text(
                      "Code Gladiators",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: wid * 0.02,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 25),
                    child: Text(
                      "Yesterday",
                      style: TextStyle(color: Colors.grey[850], fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    width: wid * 0.15,
                  ),
                  IconButton(
                    padding: EdgeInsets.only(bottom: 23),
                    icon: Icon(Icons.reply),
                    onPressed: () {
                      var snack = SnackBar(
                          content: Text(
                        "Reply",
                        style: TextStyle(fontSize: 15),
                      ));
                      ScaffoldMessenger.of(context).showSnackBar(snack);
                    },
                  ),
                  SizedBox(
                    width: wid * 0.01,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 23),
                    child: Icon(Icons.more_vert),
                  ),
                ],
              ),
              SizedBox(
                height: hei * 0.02,
              ),
              Container(
                  child: Image.network(
                "https://pbs.twimg.com/media/FPLVt74aIAEP95a.jpg",
                width: wid * 0.99,
                height: hei * 0.20,
                alignment: Alignment.center,
              )),
              SizedBox(
                height: hei * 0.03,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Hi Ahalyaa Thillai,",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
              ),
              SizedBox(
                height: hei * 0.02,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Greetings from Team TechGig!",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 11,
                      color: Colors.grey[700]),
                ),
              ),
              SizedBox(
                height: hei * 0.02,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 10),
                child: Text(
                  "This year, we have joined hands with the world's biggest coding arena, TechGig Code Gladiators 2022. We welcome you to be part of interesting coding challenges, enriching webinars, and theme-based hackathons.",
                  style: TextStyle(color: Colors.grey[700], fontSize: 10),
                ),
              ),
              SizedBox(
                height: hei * 0.02,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 10),
                child: Text(
                  "${widget.description}",
                  style: TextStyle(color: Colors.grey[700], fontSize: 10),
                ),
              ),
              SizedBox(
                height: hei * 0.03,
              ),
              Center(
                child: RaisedButton(
                  color: Colors.red[600],
                  child: Text(
                    "Register Now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    var snack = SnackBar(
                        content: Text(
                      "Click this link to register",
                      style: TextStyle(color: Colors.blue[100]),
                    ));
                    ScaffoldMessenger.of(context).showSnackBar(snack);
                  },
                ),
              ),
              SizedBox(
                height: hei * 0.01,
              ),
              Container(
                width: wid * 0.36,
                padding: EdgeInsets.only(left: 80),
                child: Text(
                  "Best Regards, Team TechGig",
                  maxLines: 2,
                  style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                ),
              ),
              SizedBox(
                height: hei * 0.03,
              ),
              Container(
                padding: EdgeInsets.only(left: 35, right: 35),
                child: Text(
                  "Note: For your privacy and protection, please do not forward this mail to anyone as it allows you to get automatically logged out in your account. If you dont want receive this mailer, unsubscribe and follow the appropriate instructions.",
                  maxLines: 3,
                  style: TextStyle(fontSize: 9, color: Colors.grey[600]),
                ),
              ),
              SizedBox(
                height: hei * 0.03,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: OutlineButton.icon(
                      onPressed: () {
                        var snack = SnackBar(
                            content: Text(
                          "Reply",
                          style: TextStyle(color: Colors.blue[50]),
                        ));
                        ScaffoldMessenger.of(context).showSnackBar(snack);
                      },
                      icon: Icon(Icons.reply),
                      label: Text("Reply",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: wid * 0.001,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: OutlineButton.icon(
                      onPressed: () {
                        var snack = SnackBar(
                            content: Text(
                          "Reply all",
                          style: TextStyle(color: Colors.blue[50]),
                        ));
                        ScaffoldMessenger.of(context).showSnackBar(snack);
                      },
                      icon: Icon(Icons.reply_all),
                      label: Text("Reply all",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: wid * 0.001,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: OutlineButton.icon(
                      onPressed: () {
                        var snack = SnackBar(
                            content: Text(
                          "Forward",
                          style: TextStyle(color: Colors.blue[50]),
                        ));
                        ScaffoldMessenger.of(context).showSnackBar(snack);
                      },
                      icon: Icon(Icons.arrow_forward),
                      label: Text("Forward",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          )),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    ));
  }
}
