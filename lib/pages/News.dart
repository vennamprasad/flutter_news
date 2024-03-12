import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  int tabIndex = 0;
  int selectedIndex = 0;

  void callApi(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: tabIndex,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            "news.org",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          titleSpacing: BorderSide.strokeAlignCenter,
          bottom: TabBar(
            padding: EdgeInsets.zero,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            enableFeedback: true,
            isScrollable: true,
            indicatorWeight: 4,
            tabAlignment: TabAlignment.start,
            physics:
                AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
            tabs: const [
              Tab(text: "General"),
              Tab(text: "Health"),
              Tab(text: "Technology"),
              Tab(text: "Science"),
              Tab(text: "Top Headlines"),
            ],
          ),
        ),
      ),
    );
  }
}
