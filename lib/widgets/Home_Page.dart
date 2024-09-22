import 'package:flutter/material.dart';
import 'package:newsapp/models/news_list_view_builder.dart';
import 'package:newsapp/widgets/DisplayCategory.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 80,
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "News",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Text(
                    " App",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ),
                ],
              ),
              floating: true,
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 100,
                child: DisplayCategory(),
              ),
            ),
            // Directly include Scroll_view as a Sliver
            NewsListViewBuilder(category: 'top',),
          ],
        ),
      ),
    );
  }
}
