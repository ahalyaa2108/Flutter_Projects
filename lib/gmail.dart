import 'package:flutter/material.dart';
import 'package:third_app/mail_detail.dart';
import 'package:third_app/mail_detailfull.dart';

class Outlook extends StatefulWidget {
  final String email;
  final String name;
  final String password;
  final String title;
  final String description;

  const Outlook(
      {Key key,
      this.email,
      this.name,
      this.password,
      this.title,
      this.description})
      : super(key: key);

  @override
  _OutlookState createState() => _OutlookState();
}

class _OutlookState extends State<Outlook> {
  String name = "";
  bool namechange = false;

  @override
  Widget build(BuildContext context) {
    // var a =
    return Scaffold(
        drawer: Drawer(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 28.0, left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all(width: 0.12)),
                    padding: EdgeInsets.all(12),
                    child: Text("Gmail ${widget.email}\n${widget.name}",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.red[700],
                        )),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  buildMenu("Active", Icons.fiber_manual_record, Colors.green),
                  buildMenu("Add a status", Icons.edit, Colors.black),
                  Divider(
                    thickness: 2,
                  ),
                  buildMenu("All inboxes", Icons.photo_library, Colors.black),
                  Divider(
                    thickness: 2,
                  ),
                  buildMenu("Inbox", Icons.inbox, Colors.black),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    "All labels",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  buildMenu("Starred", Icons.star_border, Colors.black),
                  buildMenu("Snoozed", Icons.schedule, Colors.black),
                  buildMenu(
                      "Important", Icons.label_important_outline, Colors.black),
                  SizedBox(
                    width: 190,
                    height: 25,
                    child: Text("${widget.password}"),
                  ),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("T-Mail" + name),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                decoration: InputDecoration(
                    fillColor: Colors.white12,
                    filled: true,
                    suffixIcon: CircleAvatar(
                      // radius: 10,
                      maxRadius: 10,
                      backgroundColor: Colors.deepOrange,
                      child: Text(
                        "A",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.black),
                    labelText: ("Search Bar"),
                    hintText: ("Search in mail"),
                    prefixIcon: Icon(Icons.menu)),
              ),
              buildInbox(),
              Container(
                height: 690,
                width: 400,
                child: ListView.builder(
                  itemBuilder: (c, i) {
                    return buildMail(i + 1);
                  },
                  //itemCount: 100,
                ),
              )
            ],
          )),
        ));
  }

  buildMenu(String menuName, IconData menuIcon, Color menuIconColor) {
    return InkWell(
      onTap: () {
        print("you have cli;'i8/" + menuName);
        var snackBar = SnackBar(
          content: Text("You have clicked " + menuName),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(menuIcon, color: menuIconColor),
            SizedBox(
              width: 40,
            ),
            Text(menuName,
                style: TextStyle(fontSize: 20, color: Colors.grey[600]))
          ],
        ),
      ),
    );
  }

  buildInbox() {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, top: 30),
      child: Text(
        "Inbox",
        style: TextStyle(
          fontSize: 13,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  buildMail(int index) {
    String description =
        "Bitrix $index.Network password recovery Password Moreover, prize worth INR 50 lakh are awaiting for you. Wishing you luck to make it to the grand finale!";
    String title = "Bitrix$index.Network";
    return GestureDetector(
      onLongPress: () {
        print("show menu");
      },
      onTap: () {
        var snack = SnackBar(content: Text("You have clicked :  ${index}"));
        ScaffoldMessenger.of(context).showSnackBar(snack);
        Navigator.of(context).push(MaterialPageRoute(
            builder: (c) => Maildetail(
                  index: title,
                  title: title,
                  description: description,
                )));

        print("move to new screen ${index}");
      },
      child: Container(
        padding: EdgeInsets.all(0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: Colors.pinkAccent,
              child: Text(
                "${index}",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$title",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Container(
                    width: 250,
                    child: Text(
                      "$description",
                      maxLines: 2,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("12/23/2021"),
                Icon(Icons.star),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
