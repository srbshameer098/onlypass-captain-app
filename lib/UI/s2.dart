import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/UI/s1.dart';

class S2 extends StatefulWidget {
  const S2({super.key});

  @override
  State<S2> createState() => _S2State();
}

class _S2State extends State<S2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        dragStartBehavior: DragStartBehavior.down,
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.deepPurple,
            leading: Icon(Icons.menu),
            title: Text('H E L L O'),
            expandedHeight: 900,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.pink,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: GestureDetector(
                onVerticalDragDown: (details) {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> S1()));
                },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 400,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 400,
                color: Colors.deepPurple,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 400,
                color: Colors.deepPurple,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 400,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
