import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instar/post_widget.dart';
import 'package:pie_chart/pie_chart.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  Widget _postList() {
    return Column(
      children: List.generate(50, (index) => PostWidget()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("홈"),
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.circle,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("달성율: 90%"),
                Text("포인트: 500"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
