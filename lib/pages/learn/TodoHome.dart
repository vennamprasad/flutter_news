import 'package:flutter/material.dart';

class TodoHome extends StatefulWidget {
  const TodoHome({super.key});

  @override
  State<TodoHome> createState() => _TodoHomeState();
}

class _TodoHomeState extends State<TodoHome> {
  List items = [
    ["prasad", false],
    ["venu", false],
    ["mukesh", false],
    ["rajesh", false],
    ["krishna", false],
  ];
  void onCheckBoxchanged(bool? value, int index) {
    setState(() {
      items[index][1] = !items[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("TODO"),
      ),
      floatingActionButton: FloatingActionButton.small(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: Colors.amber,
              content: Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Enter Your Name"),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: "Name"),
                    ),
                    Row(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TODOTile(
            name: items[index][0],
            isChecked: items[index][1],
            onchanged: (p0) {
              onCheckBoxchanged(p0, index);
            },
          );
        },
        itemCount: items.length,
      ),
    );
  }
}

class TODOTile extends StatefulWidget {
  String name;
  bool isChecked;
  Function(bool?)? onchanged;

  TODOTile(
      {super.key,
      required this.name,
      required this.isChecked,
      required this.onchanged});

  @override
  State<TODOTile> createState() => _TODOTileState();
}

class _TODOTileState extends State<TODOTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Row(
        children: [
          Checkbox(
            value: widget.isChecked,
            onChanged: widget.onchanged,
            activeColor: Colors.amber,
          ),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Text(
              widget.name,
              style: TextStyle(
                  decoration: widget.isChecked
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ),
        ],
      ),
    );
  }
}
