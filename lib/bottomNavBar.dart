import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled7/Pages/message_page.dart';
import 'package:untitled7/Pages/scan_page.dart';

import 'Pages/home.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

final screens = [ScanPage(),Home(),MessagePage(),];
int selectedIndex1 = 1;

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
              canvasColor: Colors.black,
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Colors.green,
              textTheme: Theme
                  .of(context)
                  .textTheme
                  .copyWith(bodySmall:  const TextStyle(color: Colors.yellow))), // sets the inactive color of the `BottomNavigationBar`
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.white,
              unselectedItemColor:Color(0xFF828282),
              backgroundColor: Color(0xFF191919),
              currentIndex: selectedIndex1,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              items:  [
                 BottomNavigationBarItem(
                   activeIcon: Image.asset('assets/icons/scan.png',height: 25,) ,
                    icon: Image.asset('assets/icons/un-scanner.png',height: 20,),
                    label: "Scan"),
                BottomNavigationBarItem(
                  activeIcon: CircleAvatar(
                      radius: 33,
                      backgroundColor: Color(0xff282828),
                      child: Image.asset('assets/icons/logo.png',height: 40,)) ,
                    icon: selectedIndex1== 1
                    ? CircleAvatar(
                        radius: 33,
                        backgroundColor: Color(0xff282828),
                        child: Image.asset('assets/icons/logo.png',height: 40,))
                    : CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(0xff282828),
                        child: Image.asset('assets/icons/logo.png',height: 30,)),
                    label: "GymFit Club"),
                BottomNavigationBarItem(
                    icon: selectedIndex1== 2
                        ? Image.asset('assets/icons/messageW.png',height: 30,)
                        : Image.asset('assets/icons/message.png',height: 25,),
                    label: "GymFit Club"),
              ],
              onTap: (int indexOfItem) {
                setState(() {
                  selectedIndex1=indexOfItem;
                });
              })),body: screens[selectedIndex1],
    );
  }
}
