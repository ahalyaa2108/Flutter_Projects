import 'package:flutter/material.dart';
import './const.dart';

class GridviewScreen extends StatefulWidget {
  const GridviewScreen({Key key}) : super(key: key);

  @override
  State<GridviewScreen> createState() => _GridviewScreenState();
}

class _GridviewScreenState extends State<GridviewScreen> {
  List<String> img = [
    'https://pbs.twimg.com/profile_images/1214220012979920898/N4tFtfjN_400x400.png',
    'https://www.r1cu.org/images/convenience/send-money2.png',
    'https://images-na.ssl-images-amazon.com/images/I/51LLSXPtTtL.png',
    'https://www.paymentsjournal.com/wp-content/uploads/2020/06/payment-background-design_1212-511.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          color: Colors.white,
          height: 220,
          width: 200,
          child: GridView.builder(
            itemCount: img.length,
            itemBuilder: (c, i) {
              print("$i");
              return Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.all(10),
                  color: Colors.white,
                  child: CircleAvatar(backgroundImage: NetworkImage(img[i])));
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 3),
          ),
        ),
      ),
    ));
  }
}
