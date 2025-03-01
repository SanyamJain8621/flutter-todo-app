import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  final String title;
  final String desc;
  final bool done;
  const Todo({
    super.key,
    required this.title,
    required this.desc,
    required this.done,
  });

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: widget.done ? Colors.green : Colors.red,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20)),
              Text(widget.desc)
            ],
          ),
        ),
      ),
    );
  }
}
