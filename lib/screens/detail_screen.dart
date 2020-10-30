import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_app/widgets/bottom_header.dart';
import 'package:food_app/widgets/card_page.dart';
import 'package:food_app/widgets/display_page_indicators.dart';
import 'package:food_app/widgets/name_and_count.dart';
import 'package:quiver/async.dart';

class DetailScreen extends StatefulWidget {
  final String image;
  final String title;
  final String price;
  final String time;

  DetailScreen({
    @required this.image,
    @required this.title,
    @required this.price,
    @required this.time,
  });

  @override
  _DetailScreenState createState() => _DetailScreenState();
}
class _DetailScreenState extends State<DetailScreen>
    with TickerProviderStateMixin {
  ValueNotifier<int> _pageViewNotifier = ValueNotifier(0);
 // int _time=int.parse(widget.time);


  @override
  Widget build(BuildContext context) {
    int timer=int.parse(widget.time);
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.more_vert),
          )
        ],
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardPage(
                pageViewNotifier: _pageViewNotifier,
                image: widget.image,
              ),
              DisplayPageIndicators(
                length: 3,
                pageViewNotifier: _pageViewNotifier,
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: NameAndCount(
                  title: widget.title,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: TextStyle(
                    color: Colors.grey[700],
                    height: 1.5,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: [
                    Text(
                      'Time required',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Icon(
                      Icons.timer,
                      size: 18,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '$timer',
                        style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: BottomHeader(price: widget.price,time:timer),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
