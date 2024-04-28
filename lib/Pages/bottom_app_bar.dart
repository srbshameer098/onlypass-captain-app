import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled7/Pages/home.dart';
import 'package:untitled7/Pages/message_page.dart';
import 'package:untitled7/Pages/scan_page.dart';

class BottomAppBarPage extends StatefulWidget {
  @override
  _BottomAppBarPageState createState() => _BottomAppBarPageState();
}

class _BottomAppBarPageState extends State<BottomAppBarPage> {
  int _currentIndex = 1;

  final List<Widget> _pages = [
    ScanPage(),
    Home(),
    MessagePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(

        shadowColor: Colors.black,
        surfaceTintColor: Colors.black,
        height: 126,
        color: Colors.black,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            IconButton(
              disabledColor: Colors.black,
              focusColor: Colors.black,
              highlightColor: Colors.black,
              splashColor: Colors.black,
              color: Colors.black,
              hoverColor: Colors.black,
              alignment: Alignment.bottomCenter,
              icon: _currentIndex == 0
                  ? Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(height: 8,),
                      Text(
                        'Scan',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                  : Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 20,
                  ),
                  SizedBox(height: 8,),
                  Text(
                    'Scan',
                    style: GoogleFonts.montserrat(
                      color: Color(0xFF818181),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              onPressed: () => setState(() => _currentIndex = 0),
            ),
            IconButton(
              focusColor: Colors.black,
              highlightColor: Colors.black,
              splashColor: Colors.black,
              color: Colors.black,
              hoverColor: Colors.black,
              alignment: Alignment.bottomCenter,
              icon: _currentIndex == 1
                  ? Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        // backgroundImage: AssetImage(  'assets/icons/GymFit ClubSelected.png',),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,

                          radius: 29,
                          child: Image.asset(
                            'assets/icons/logo.png',
                            height: 64.h,
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        'GymFit Club',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.grey[800],
                          // backgroundImage: AssetImage(  'assets/icons/GymFit ClubSelected.png',),
                          child: CircleAvatar(
                            backgroundColor: Colors.black,

                            radius: 20,
                            child: Image.asset(
                              'assets/icons/logo.png',
                              height: 44.h,
                            ),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          'GymFit Club',
                          style: GoogleFonts.montserrat(
                            color: Color(0xFF818181),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
              onPressed: () => setState(() => _currentIndex = 1),
            ),
            IconButton(
              disabledColor: Colors.black,
              focusColor: Colors.black,
              highlightColor: Colors.black,
              splashColor: Colors.black,
              color: Colors.black,
              hoverColor: Colors.black,
              alignment: Alignment.bottomCenter,
              icon: _currentIndex == 2
                  ? Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(height: 8,),
                        Text(
                          'Messages',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 20,
                        ),
                        SizedBox(height: 8,),
                        Text(
                          'Messages',
                          style: GoogleFonts.montserrat(
                            color: Color(0xFF818181),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
              onPressed: () => setState(() => _currentIndex = 2),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Home Screen'));
  }
}

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Favorites Screen'));
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Profile Screen'));
  }
}
