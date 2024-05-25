import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:untitled7/UI/Pages/create_event.dart';
import 'package:untitled7/UI/Pages/event_confirm.dart';
import 'package:untitled7/UI/Pages/event_location.dart';

import 'UI/Pages/event_time.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    eventDescriptionController.addListener(() {
      setState(() {});
    });
  }

  final PageController _pageController = PageController();
  int currentPage = 0; // Track current page index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Leave without saving?'),
                  content: Text('Are you sure you want to leave without saving your changes?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context), // Allow leaving
                      child: Text('Leave'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, false), // Stay on screen
                      child: Text('Stay'),
                    ),
                  ],
                );
              },
            );

            // Navigator.pop(context);
          },
          child: Padding(
            padding: EdgeInsets.only(left: 25.w, top: 10.h, bottom: 10.h),
            child: Container(
              width: 37.59.w,
              height: 37.59.h,
              decoration: ShapeDecoration(
                color: const Color(0xFF282828),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.r)),
              ),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xFF1B1B1B),
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Create an event or class',
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
            child: Center(
                child: Image.asset(
                  'assets/icons/fi-rr-menu-dots-vertical.png',
                  height: 24.h,
                  width: 26.w,
                )),
          )
        ],
      ),
      floatingActionButton: CircularStepProgressIndicator(
        totalSteps: 100,
        currentStep: 35+currentPage*35,
        stepSize: 0,
        selectedColor: Color(0xFF37F840),
        unselectedColor: Colors.transparent,
        width: 85.w,
        height: 85.h,
        selectedStepSize: 5,
        // roundedCap: (_, __) => true,
        child: GestureDetector(
          onTap: () {

            _pageController.nextPage(
              duration: Duration(milliseconds: 1),
              curve: Curves.ease,
            );
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (_) => EventConfirm()));

          },
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 33.r,
            child: CircleAvatar(
              backgroundColor: Color(0xFFFEFEFE),
              radius: 32.r,
              child: Center(child: Icon(Icons.east)),
            ),
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        // scrollDirection: Axis.vertical,

        onPageChanged: (index) => setState(() => currentPage = index), // Update current page
        children: [
          CreateEvent(),
          EventTime(),
          EventLocation()

          // // Page 1 content wrapped with GestureDetector
          // GestureDetector(
          //   onPanUpdate: (details) {
          //     if (details.delta.dy > 0) {
          //       _pageController.nextPage(
          //         duration: Duration(milliseconds: 300),
          //         curve: Curves.ease,
          //       );
          //     }
          //   },
          //   child: Container(
          //     color: Colors.red,
          //     child: Center(child: Text('Page 1')),
          //   ),
          // ),
          // // Page 2 content wrapped with GestureDetector
          // GestureDetector(
          //   onPanUpdate: (details) {
          //     if (details.delta.dy > 0) {
          //       _pageController.nextPage(
          //         duration: Duration(milliseconds: 300),
          //         curve: Curves.ease,
          //       );
          //     }
          //   },
          //   child: Container(
          //     color: Colors.green,
          //     child: Center(child: Text('Page 2')),
          //   ),
          // ),
        ],
      ),
    );
  }
}
