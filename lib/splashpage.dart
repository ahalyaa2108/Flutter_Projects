import 'package:flutter/material.dart';
import 'package:third_app/thinkmepage3.dart';
import 'package:third_app/thinkmepage5.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white])),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 320, top: 20),
                child: IconButton(
                  icon: Icon(
                    Icons.highlight_off_outlined,
                    size: 45,
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => Adminpage()));
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 90),
                child: Center(
                  child: Text(
                    "TRM EXTRA3 OFFER!",
                  
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange[400]),
                  ),
                ),
              ),
              SizedBox(
                height: hei * 0.01,
              ),
              Container(
                padding: EdgeInsets.only(left: 45, right: 50),
                child: Text(
                  "Get 3 Extra Months Free On Your Annual Subscription",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black,
                      fontFamily: 'Indies'),
                  maxLines: 2,
                ),
              ),
              SizedBox(
                height: hei * 0.02,
              ),
              Container(
                child: OutlineButton(
                  borderSide: BorderSide(
                    color: Colors.deepOrange[200],
                  ),
                  highlightedBorderColor: Colors.red,
                  child: Text(
                    "USE CODE: EXTRA3",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 17),
                  ),
                  disabledBorderColor: Colors.red,
                  onPressed: () {},
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepOrange[400]),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.red[300])),
                      )),
                  child: Text(
                    "          BUY NOW        ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (c) => Subscribepage3()));
                  },
                ),
              ),
              SizedBox(
                height: hei * 0.04,
              ),
              Container(
                width: wid * 0.90,
                height: hei * 0.35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    gradient: LinearGradient(
                        colors: [Colors.white, Colors.cyan[50]])),
                child: Image(
                  image: NetworkImage(
                      "https://us.123rf.com/450wm/maridav/maridav1307/maridav130700008/20560248-yoga-woman-relaxing-by-sea-doing-the-sukhasana-easy-pose-facing-water-woman-meditating-in-beautiful-.jpg?ver=6"),
                ),
              ),
              SizedBox(
                height: hei * 0.01,
              ),
              Container(
                padding: EdgeInsets.only(left: 260),
                child: Text(
                  " Limited Time Offer* ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
