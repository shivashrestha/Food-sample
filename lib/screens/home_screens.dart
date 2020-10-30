import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_app/screens/detail_screen.dart';
import 'package:food_app/widgets/bottom_bar.dart';
import 'package:food_app/widgets/chicken_card.dart';
import 'package:food_app/widgets/filtering.dart';
import 'package:food_app/widgets/salad_card.dart';
import 'package:food_app/widgets/top_header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    double chickenSaladPrice=40.0;
    double mixedSaladPrice=25.0;
    double quinoaSaladPrice=23.0;

    int chickenSaladTime=15;
    int mixedSaladTime=10;
    int quinoaSaladTime=12;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Image.asset(
          'assets/images/menu.png',
          width: 24,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'assets/images/search.png',
              width: 24,
            ),
          )
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopHeader(),
                  SizedBox(
                    height: 16,
                  ),
                  Filtering(),
                  SizedBox(
                    height: _height * 0.05,
                  ),
                  ChickenCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            image: 'assets/images/chicken.png',
                            price: "$chickenSaladPrice",
                            title: 'Chicken Salad',
                            time:'$chickenSaladTime',

                          ),
                        ),
                      );
                    },
                    title: 'Chicken Salad',
                    image: 'assets/images/chicken.png',
                    price: '$chickenSaladPrice',
                    sub: 'Chicken with Avocado',
                  ),
                  SizedBox(
                    height: _height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SaladCard(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                image: 'assets/images/mixed.png',
                                price: '$mixedSaladPrice',
                                title: 'Mixed Salad',
                                time: '$mixedSaladTime',
                              ),
                            ),
                          );
                        },
                        title: 'Mixed Salad',
                        image: 'assets/images/mixed.png',
                        price: '$mixedSaladPrice',
                        sub: 'Mix Vegetables',
                      ),
                      SaladCard(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                image: 'assets/images/mixed.png',
                                price: '$quinoaSaladPrice',
                                title: 'Quinoa Salad',
                                time: '$quinoaSaladTime',
                              ),
                            ),
                          );
                        },
                        title: 'Quinoa Salad',
                        image: 'assets/images/mixed.png',
                        price: '$quinoaSaladPrice',
                        sub: 'Spicy with garlic',
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: BottomBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
