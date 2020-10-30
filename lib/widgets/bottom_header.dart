import 'package:flutter/material.dart';
import 'package:food_app/screens/detail_screen.dart';
import 'package:quiver/async.dart';

class BottomHeader extends StatelessWidget {
  final String price;
  final int time;

  BottomHeader({@required this.price, @required this.time});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Price',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '\$$price',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: null,
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/rectangle.png'),
              ),
            ),
            child: Center(
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Text(
                    'Order',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}