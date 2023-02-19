import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<String> img = [
    'https://pbs.twimg.com/profile_images/1214220012979920898/N4tFtfjN_400x400.png',
    'https://assets.entrepreneur.com/content/3x2/2000/1604423734-upi-paymentedit.jpg?crop=16:9',
    'https://cdn2.vectorstock.com/i/1000x1000/23/56/mobile-app-for-scanning-qr-code-vector-13702356.jpg',
    'https://coupons.com.gh//blog/assets/images/pay-utility-bills.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: wid * 0.22,
                        height: hei * 0.11,
                        color: Colors.white,
                        child: Image.network(
                            "https://m.media-amazon.com/images/G/31/prime/detail_page/Prime_Detail_Page_PC_Benefits_Delivery_1344x526._CB653891553_.jpg"),
                      ),
                      SizedBox(
                        height: hei * 0.01,
                      ),
                      Container(
                        child: Text("Prime"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: wid * 0.22,
                        height: hei * 0.11,
                        color: Colors.white,
                        child: Image.network(
                            "https://m.media-amazon.com/images/I/512EqFhtDOL.jpg"),
                      ),
                      SizedBox(
                        height: hei * 0.01,
                      ),
                      Container(
                        child: Text("Fashion"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: wid * 0.22,
                        height: hei * 0.11,
                        color: Colors.white,
                        child: Image.network(
                            "https://www.globalbrandsmagazine.com/wp-content/uploads/2020/08/Top-10-Mobile-Brands-in-World-1-1.jpg"),
                      ),
                      SizedBox(
                        height: hei * 0.01,
                      ),
                      Container(
                        child: Text("Mobiles"),
                      ),
                    ],
                  ),
                  buildGridItem(
                      wid,
                      hei,
                      "https://st2.depositphotos.com/4495479/6651/v/950/depositphotos_66519797-stock-illustration-modern-electronc-gadgets-on-a.jpg",
                      "Electronics"),
                  Column(
                    children: [
                      Container(
                        width: wid * 0.22,
                        height: hei * 0.11,
                        color: Colors.white,
                        child: Image.network(
                            "https://www.indiantelevision.com/sites/default/files/styles/230x230/public/images/tv-images/2021/11/01/img_01112021_130429_800_x_800_pixel.jpg?itok=U4lqiKKi"),
                      ),
                      SizedBox(
                        height: hei * 0.01,
                      ),
                      Container(
                        child: Text("MiniTV"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: wid * 0.22,
                        height: hei * 0.11,
                        color: Colors.white,
                        child: Image.network(
                            "https://m.media-amazon.com/images/I/41vchUOkBUL._AC_SS450_.jpg"),
                      ),
                      SizedBox(
                        height: hei * 0.01,
                      ),
                      Container(
                        child: Text("Fresh"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: wid * 0.22,
                        height: hei * 0.11,
                        color: Colors.white,
                        child: Image.network(
                            "https://5.imimg.com/data5/CC/NV/MY-46132779/single-seater-sofa-500x500.jpg"),
                      ),
                      SizedBox(
                        height: hei * 0.01,
                      ),
                      Container(
                        child: Text("Home"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: wid * 0.22,
                        height: hei * 0.11,
                        color: Colors.white,
                        child: Image.network(
                            "https://navbharattimes.indiatimes.com/photo/msid-88293800,imgsize-40298/pic.jpg"),
                      ),
                      SizedBox(
                        height: hei * 0.01,
                      ),
                      Container(
                        child: Text("Appliances"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: wid * 0.22,
                        height: hei * 0.11,
                        color: Colors.white,
                        child: Image.network(
                            "https://m.media-amazon.com/images/I/81ndHFmNZTL._AC_SL1500_.jpg"),
                      ),
                      SizedBox(
                        height: hei * 0.01,
                      ),
                      Container(
                        child: Text("Books, Toys"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: wid * 0.22,
                        height: hei * 0.11,
                        color: Colors.white,
                        child: Image.network(
                            "https://img.freepik.com/free-vector/red-white-capsule-pill_92242-102.jpg"),
                      ),
                      SizedBox(
                        height: hei * 0.01,
                      ),
                      Container(
                        child: Text("Pharmacy"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: wid * 0.22,
                        height: hei * 0.11,
                        color: Colors.white,
                        child: Image.network(
                            "https://www.flushinghospital.org/newsletter/wp-content/uploads/2020/09/GettyImages-1155252155.jpg"),
                      ),
                      SizedBox(
                        height: hei * 0.01,
                      ),
                      Container(
                        child: Text("Essentials"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // SizedBox(
            //  height: hei * 0.01,
            // ),
            Container(
                height: hei * 0.30,
                child: Image.network(
                    "https://assets.indiadesire.com/images/amazon%20prime%20day%20sale%202021.jpg")),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 180,
                      width: 170,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, crossAxisSpacing: 3),
                        itemCount: img.length,
                        itemBuilder: (c, i) {
                          print("$i");
                          return Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(0),
                                  margin: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(img[i]),
                                  )),
                              Container(
                                child: Text(
                                  'Amazon Pay',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Container(
                      height: hei * 0.20,
                      width: wid * 0.38,
                      color: Colors.black,
                      child: Image.network(
                          "https://www.dealsmagnet.com/Assets/OriginalImage/2022/March/Blg481/Amazon-Honor-MagicBook-Quiz-Answers.webp"),
                    ),
                    Column(
                      children: [
                        Container(
                          width: wid * 0.30,
                          height: hei * 0.15,
                          child: Image.network(
                              "https://img.joomcdn.net/64c2362508c39524b5fe4dcb68ee0d545610cb5a_original.jpeg"),
                        ),
                        Container(
                          child: Text("Keep shopping for"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: wid * 0.30,
                          height: hei * 0.15,
                          child: Image.network(
                              "https://foter.com/photos/400/oversized-gallery-lacy-quartz-32-wall-clock.jpg"),
                        ),
                        Container(
                          child: Text("Explore more"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: wid * 0.30,
                          height: hei * 0.15,
                          child: Image.network(
                              "https://www.apple.com/newsroom/images/product/iphone/standard/Apple_iphone13_hero_09142021_inline.jpg.large.jpg"),
                        ),
                        Container(
                          child: Text("Tap to explore"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: wid * 0.30,
                          height: hei * 0.15,
                          child: Image.network(
                              "https://www.fashioncentral.pk/wp-content/uploads/2019/08/Manish-Malhotra-LFW-Collection-2019.jpg"),
                        ),
                        Container(
                          child: Text("balaji"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: wid * 0.30,
                          height: hei * 0.15,
                          child: Image.network(
                              "https://m.media-amazon.com/images/I/61L5k+xh37L._SL1500_.jpg"),
                        ),
                        Container(
                          child: Text("Upto 75% off "),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: wid * 0.30,
                          height: hei * 0.15,
                          child: Stack(
                            children: [
                              Image.network(
                                  "https://ae01.alicdn.com/kf/H596b7bfd13864c4bbb45221b33edddd5s/Pa-an-Lunchbox-Kids-Lunch-Box-Tiffin-Box-for-Kids-Food-Storage-Container-Bento-Lunch-Box.jpg_Q90.jpg_.webp"),
                              Positioned(
                                top: 80,
                                left: 20,
                                child: Container(
                                  height: 20,
                                  width: 200,
                                  child: Stack(
                                    children: [
                                      Container(
                                        color: Colors.red,
                                        height: 20,
                                        width: 100,
                                      ),
                                      Text("Grab your things"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text("Steal your recommended product"),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
                Container(
                  height: 60,
                  width: 70,
                  color: Colors.cyan,
                ),
                Container(height: 50, width: 50, color: Colors.black),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: wid,
                  height: hei * 0.35,
                  color: Colors.pink[100],
                  child: Image.network(
                      "https://img.freepik.com/free-photo/home-workout-sports-equipment-purple-yoga-block-yellow-elastic-bands-bright-pink-background_482975-167.jpg"),
                ),
                Container(
                    padding: EdgeInsets.only(top: 150, left: 160),
                    child: IconButton(
                      icon: Icon(
                        Icons.play_circle_outline,
                        size: 60,
                        color: Colors.white,
                      ),onPressed: (){
                        
                      },
                    )),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  Column buildGridItem(double wid, double hei, String imageURL, String text) {
    return Column(
      children: [
        Container(
            width: wid * 0.22,
            height: hei * 0.11,
            color: Colors.white,
            child: Image.network(imageURL)),
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
