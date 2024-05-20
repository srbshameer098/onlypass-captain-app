import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'event_confirm.dart';

class EventLocation extends StatefulWidget {
  const EventLocation({super.key});

  @override
  State<EventLocation> createState() => _EventLocationState();
}

class _EventLocationState extends State<EventLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF1B1B1B),
      backgroundColor: Colors.red,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 25, top: 10, bottom: 10),
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
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
        currentStep: 100,
        stepSize: 0,
        selectedColor: Color(0xFF37F840),
        unselectedColor: Colors.transparent,
        padding: 0,
        width: 85,
        height: 85,
        selectedStepSize: 5,
        roundedCap: (_, __) => false,
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=> EventConfirm()));
          },
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 35,
            child: CircleAvatar(
              backgroundColor: Color(0xFFFEFEFE),
              radius: 34,
              child: Center(child: Icon(Icons.east)),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              child: Text(
                'Select type ',
                style: GoogleFonts.montserrat(
                  color: Color(0xFFE4E4E4),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,
                    height: 48,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFEFEFE),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 12,
                          height: 12,
                          decoration: ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 3, color: Color(0xFF00FF00)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Create an event',
                          style: GoogleFonts.montserrat(
                            color: Color(0xFF191919),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 48,
                    decoration: ShapeDecoration(
                      color: Color(0xFF282828),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 12,
                          height: 12,
                          decoration: ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFFEFEFE)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Create an event',
                          style: GoogleFonts.montserrat(
                            color: Color(0xFF6F6F70),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              child: Text(
                'Event name',
                style: GoogleFonts.montserrat(
                  color: Color(0xFFE4E4E4),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                child: Container(
                  width: 376,
                  height: 48,
                  decoration: ShapeDecoration(
                    color: Color(0xFF282828),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1)),
                  ),
                  child: TextFormField(
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      suffix: SizedBox(
                        width: 10,
                      ),
                      border: InputBorder.none,
                      hintText: 'Enter what do you want to call this event',
                      hintStyle: GoogleFonts.montserrat(
                        color: Color(0xFF6F6F70),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      prefix: SizedBox(
                        width: 16,
                      ),
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              child: Text(
                'Event description',
                style: GoogleFonts.montserrat(
                  color: Color(0xFFE4E4E4),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                child: Container(
                  width: 376,
                  decoration: ShapeDecoration(
                    color: Color(0xFF282828),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1)),
                  ),
                  child: TextFormField(
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(250),
                    ],
                    maxLines: 4,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      suffix: SizedBox(
                        width: 10,
                      ),
                      border: InputBorder.none,
                      hintText: 'Enter what do you want to call this event',
                      hintStyle: GoogleFonts.montserrat(
                        color: Color(0xFF6F6F70),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      prefix: SizedBox(
                        width: 16,
                      ),
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              child: Text(
                'Event category',
                style: GoogleFonts.montserrat(
                  color: Color(0xFFE4E4E4),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,
                    height: 89,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Text(
                            'Event category',
                            style: TextStyle(
                              color: Color(0xFFE4E4E4),
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 41,
                          child: Container(
                            width: 180,
                            height: 48,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 180,
                                    height: 48,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF282828),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(1)),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  top: 17,
                                  child: Text(
                                    'Select category',
                                    style: TextStyle(
                                      color: Color(0xFF818181),
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 89,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Text(
                            'Event category',
                            style: TextStyle(
                              color: Color(0xFFE4E4E4),
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 41,
                          child: Container(
                            width: 180,
                            height: 48,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 180,
                                    height: 48,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF282828),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(1)),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  top: 17,
                                  child: Text(
                                    'Select category',
                                    style: TextStyle(
                                      color: Color(0xFF818181),
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                child: Container(
                  width: 180,
                  height: 89,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Text(
                          'Event category',
                          style: TextStyle(
                            color: Color(0xFFE4E4E4),
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 41,
                        child: Container(
                          width: 180,
                          height: 48,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 180,
                                  height: 48,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF282828),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(1)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                top: 17,
                                child: Text(
                                  'Select category',
                                  style: TextStyle(
                                    color: Color(0xFF818181),
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
