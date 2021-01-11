import "package:flutter/material.dart";

import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('点餐'),
          ],
        ),
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          color: Color.fromRGBO(245, 244, 248, 1),
          child: new Swiper(
            itemBuilder: (BuildContext context, int index) {
              return new Image.network(
                "http://via.placeholder.com/350x150",
                fit: BoxFit.fill,
              );
            },
            itemCount: 3,
            pagination: new SwiperPagination(
              builder: new DotSwiperPaginationBuilder(
                activeColor: Color.fromRGBO(255, 188, 13, 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
