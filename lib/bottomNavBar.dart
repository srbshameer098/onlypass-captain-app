import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled7/Pages/message_page.dart';
import 'package:untitled7/Pages/scan_page.dart';

import 'Pages/home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

final screens = [
  const ScanPage(),
  const Home(),
  const MessagePage(),
];
int _selectedIndex = 1;

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          selectedLabelStyle: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: GoogleFonts.montserrat(
            color: const Color(0xFF818181),
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: const Color(0xFF828282),
          backgroundColor: const Color(0xFF191919),
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                activeIcon:

                Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: Image.asset(
                    'assets/icons/scanner selected.png',
                    height: 64.h,
                  ),
                ),
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 26.r,
                    backgroundColor: const Color(0xFF4D4D4D),
                    child: CircleAvatar(
                        radius: 25.r,
                        backgroundColor: const Color(0xff282828),
                        child: Image.asset(
                          'assets/icons/un-scanner.png',
                          height: 22.h,
                        )),
                  ),
                ),
                label: "Scan"),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: Image.asset(
                    'assets/icons/GymFit ClubSelected.png',
                    height: 64.h,
                  ),
                ),
                icon: Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: CircleAvatar(
                    radius: 26.r,
                    backgroundColor: Color(0xFF4D4D4D),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xff282828),
                      child: Image.asset(
                        'assets/icons/logo.png',
                        height: 44.h,
                      ),
                    ),
                  ),
                ),
                label: "GymFit Club"),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: Image.asset(
                    'assets/icons/message selected.png',
                    height: 64.h,
                  ),
                ),
                icon: Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: CircleAvatar(
                    radius: 26.r,
                    backgroundColor: Color(0xFF4D4D4D),
                    child: CircleAvatar(
                        radius: 25.r,
                        backgroundColor: Color(0xff282828),
                        child: Image.asset(
                          'assets/icons/message.png',
                          height: 22.h,
                        )),
                  ),
                ),
                label: "Messages"),
          ],
          onTap: (int indexOfItem) {
            setState(() {
              _selectedIndex = indexOfItem;
            });
          }),
      body: IndexedStack(
        index: _selectedIndex,
        children: screens,
      ),
    );
  }
}
