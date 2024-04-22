import 'package:flutter/material.dart';
import 'package:scrollable_reorderable_navbar/scrollable_reorderable_navbar.dart';



class Sample2 extends StatefulWidget {
  const Sample2({super.key});

  @override
  State<Sample2> createState() => _Sample2State();
}

class _Sample2State extends State<Sample2> {

  int _selectedIndex = 0;
  List<NavBarItem> _items = const [

    NavBarItem(widget: Icon(Icons.qr_code_scanner), name: "Scan"),
    NavBarItem(widget: Icon(Icons.attractions_rounded), name: "GymFit Club"),
    NavBarItem(widget: Icon(Icons.call), name: "Calls"),
    NavBarItem(widget: Icon(Icons.image), name: "Pictures"),
    NavBarItem(widget: Icon(Icons.message), name: "Messages"),
    NavBarItem(widget: Icon(Icons.settings), name: "Settings")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom nav bar")),
      bottomNavigationBar: ScrollableReorderableNavBar(

        items: _items,
        selectedIndex: _selectedIndex,

        deleteIndicationWidget: Container(
          padding: const EdgeInsets.only(bottom: 100),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.vertical,
              children: [
                Text("Tap on nav item to delete it.",
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center),
                TextButton(onPressed: () {}, child: const Text("DONE"))
              ],
            ),
          ),
        ), onItemTap: (int value) {  }, onReorder: (int oldIndex, int newIndex) {  }, onDelete: (int value) {  },
      ),
    );
  }
}