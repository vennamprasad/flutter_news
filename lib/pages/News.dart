import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  int tabIndex = 0;
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
            unselectedLabelColor: Colors.grey,
            enableFeedback: true,
            isScrollable: true,
            indicatorPadding: EdgeInsets.zero,
            indicatorWeight: 4,
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
