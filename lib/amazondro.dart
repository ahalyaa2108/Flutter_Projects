import 'package:flutter/material.dart';

class Amazon extends StatefulWidget {
  const Amazon({Key key}) : super(key: key);

  @override
  State<Amazon> createState() => _AmazonState();
}

class _AmazonState extends State<Amazon> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Container(
          color: Colors.teal[100],
          height: hei * 0.10,
          padding: EdgeInsets.only(left: 0.40),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                labelText: "Search Amazon.in",
                labelStyle: TextStyle(
                    fontSize: 18,
                    //fontWeight: FontWeight.bold,
                    color: Colors.grey[700]),
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(
                  Icons.center_focus_strong,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.teal[50],
          height: hei * 0.05,
          child: TextField(
            decoration: InputDecoration(
                border: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white)),
                labelText: "Deliver to Ahalyaa - Sarcarsama...641107",
                prefixIcon: Icon(Icons.location_on),
                suffixIcon: Icon(Icons.expand_more),
                labelStyle: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          width: wid,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              buildgrid1(
                  wid,
                  hei,
                  "https://m.media-amazon.com/images/G/31/prime/detail_page/Prime_Detail_Page_PC_Benefits_Delivery_1344x526._CB653891553_.jpg",
                  "Prime"),
              buildgrid1(
                  wid,
                  hei,
                  "https://m.media-amazon.com/images/I/512EqFhtDOL.jpg",
                  "Fashion"),
              buildgrid1(
                  wid,
                  hei,
                  "https://m.media-amazon.com/images/G/31/prime/detail_page/Prime_Detail_Page_PC_Benefits_Delivery_1344x526._CB653891553_.jpg",
                  "Prime"),
              buildgrid1(
                  wid,
                  hei,
                  "https://m.media-amazon.com/images/I/512EqFhtDOL.jpg",
                  "Fashion"),
              buildgrid1(
                  wid,
                  hei,
                  "https://m.media-amazon.com/images/G/31/prime/detail_page/Prime_Detail_Page_PC_Benefits_Delivery_1344x526._CB653891553_.jpg",
                  "Prime"),
              buildgrid1(
                  wid,
                  hei,
                  "https://m.media-amazon.com/images/I/512EqFhtDOL.jpg",
                  "Fashion"),
            ]),
          ),
        ),
        Container(
          child: Image.network(
              "https://assets.mspimages.in/wp-content/uploads/2021/10/Amazon-Great-Indian-Festival-main.jpg"),
        ),
        Container(
          color: Colors.black,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.only(top: hei * 0.03),
                  width: wid * 0.45,
                  height: hei * 0.24,
                  color: Colors.indigo[50],
                  child: Center(
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: (c, i) {
                          return Container(
                            width: wid * 0.3,
                            height: hei * 0.3,
                            color: Colors.grey[200],
                            child: Column(
                              children: [
                                Container(
                                  child: Image.network(
                                      "https://www.gizbot.com/img/2020/11/amazon-pay-explained-how-to-transfer-amazon-pay-balance-to-paytm-google-pay-bank-account-1605271941.jpg"),
                                ),
                                Container(
                                  child: Text("Amazon Pay"),
                                ),
                              ],
                            ),
                          );
                        }),
                  )),
            ],
          ),
        ),
      ]),
    ));
  }

  Column buildgrid1(double wid, double hei, String imgURL, String text) {
    return Column(
      children: [
        Container(
          width: wid * 0.22,
          height: hei * 0.11,
          color: Colors.white,
          child: Image.network(imgURL),
        ),
        SizedBox(
          height: hei * 0.01,
        ),
        Container(
          child: Text(text),
        ),
      ],
    );
  }
}
