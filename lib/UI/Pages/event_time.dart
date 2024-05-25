import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'event_location.dart';

class EventTime extends StatefulWidget {
  const EventTime({super.key});

  @override
  State<EventTime> createState() => _EventTimeState();
}

class _EventTimeState extends State<EventTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1B1B),

      // appBar: AppBar(
      //   leading: GestureDetector(
      //     onTap: (){
      //       Navigator.pop(context);
      //     },
      //     child: Padding(
      //       padding: const EdgeInsets.only(left: 25, top: 10, bottom: 10),
      //       child: Container(
      //         width: 37.59.w,
      //         height: 37.59.h,
      //         decoration: ShapeDecoration(
      //           color: const Color(0xFF282828),
      //           shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(2.r)),
      //         ),
      //         child: Icon(
      //           Icons.arrow_back_ios_new_rounded,
      //           color: Colors.white,
      //         ),
      //       ),
      //     ),
      //   ),
      //   backgroundColor: Color(0xFF1B1B1B),
      //   automaticallyImplyLeading: false,
      //   elevation: 0,
      //   centerTitle: true,
      //   title: Text(
      //     'Create an event',
      //     style: GoogleFonts.montserrat(
      //       color: Colors.white,
      //       fontSize: 16,
      //       fontWeight: FontWeight.w600,
      //     ),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      //       child: Center(
      //           child: Image.asset(
      //             'assets/icons/fi-rr-menu-dots-vertical.png',
      //             height: 24.h,
      //             width: 26.w,
      //           )),
      //     )
      //   ],
      // ),
      // floatingActionButton: CircularStepProgressIndicator(
      //   totalSteps: 100,
      //   currentStep: 60,
      //   stepSize: 0,
      //   selectedColor: Color(0xFF37F840),
      //   unselectedColor: Colors.transparent,
      //   width: 85.w,
      //   height: 85.h,
      //   selectedStepSize: 5,
      //   roundedCap: (_, __) => false,
      //   child: GestureDetector(
      //     onTap: () {
      //       Navigator.push(
      //           context, MaterialPageRoute(builder: (_) => EventLocation()));
      //     },
      //     child: CircleAvatar(
      //       backgroundColor: Colors.transparent,
      //       radius: 33.r,
      //       child: CircleAvatar(
      //         backgroundColor: Color(0xFFFEFEFE),
      //         radius: 32.r,
      //         child: Center(child: Icon(Icons.east)),
      //       ),
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              child: Text(
                'Set event date and time',
                style: GoogleFonts.montserrat(
                  color: Color(0xFFE4E4E4),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
            //   child: Text(
            //     'From',
            //     style: GoogleFonts.montserrat(
            //       color: Color(0xFFE4E4E4),
            //       fontSize: 14.sp,
            //       fontWeight: FontWeight.w600,
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 08.0.h),
            //   child: Center(
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Container(
            //           width: 180.w,
            //           height: 48.h,
            //           decoration: ShapeDecoration(
            //             color: Color(0xFFFEFEFE),
            //             shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(1.r)),
            //           ),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               Container(
            //                 width: 12.w,
            //                 height: 12.h,
            //                 decoration: ShapeDecoration(
            //                   shape: OvalBorder(
            //                     side: BorderSide(
            //                         width: 3.w, color: Color(0xFF00FF00)),
            //                   ),
            //                 ),
            //               ),
            //               SizedBox(
            //                 width: 8.w,
            //               ),
            //               Text(
            //                 'Create an event',
            //                 style: GoogleFonts.montserrat(
            //                   color: Color(0xFF191919),
            //                   fontSize: 12.sp,
            //                   fontWeight: FontWeight.w500,
            //                 ),
            //               )
            //             ],
            //           ),
            //         ),
            //         // SizedBox(width: 16.w,),
            //         Container(
            //           width: 180.w,
            //           height: 48.h,
            //           decoration: ShapeDecoration(
            //             color: Color(0xFF282828),
            //             shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(1)),
            //           ),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               Container(
            //                 width: 12.w,
            //                 height: 12.h,
            //                 decoration: ShapeDecoration(
            //                   shape: OvalBorder(
            //                     side: BorderSide(
            //                         width: 1.w, color: Color(0xFFFEFEFE)),
            //                   ),
            //                 ),
            //               ),
            //               SizedBox(
            //                 width: 8.w,
            //               ),
            //               Text(
            //                 'Create a class',
            //                 style: GoogleFonts.montserrat(
            //                   color: Color(0xFF6F6F70),
            //                   fontSize: 12.sp,
            //                   fontWeight: FontWeight.w500,
            //                 ),
            //               )
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
            //   child: Text(
            //     'Event name',
            //     style: GoogleFonts.montserrat(
            //       color: Color(0xFFE4E4E4),
            //       fontSize: 14.sp,
            //       fontWeight: FontWeight.w600,
            //     ),
            //   ),
            // ),
            // Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
            //     child: Container(
            //       width: double.infinity,
            //       height: 48.h,
            //       decoration: ShapeDecoration(
            //         color: Color(0xFF282828),
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(1.r)),
            //       ),
            //       child: TextFormField(
            //         style: GoogleFonts.montserrat(
            //           color: Colors.white,
            //           fontSize: 14.sp,
            //           fontWeight: FontWeight.w500,
            //         ),
            //         decoration: InputDecoration(
            //           suffix: SizedBox(
            //             width: 10.w,
            //           ),
            //           border: InputBorder.none,
            //           hintText: 'Enter what do you want to call this event',
            //           hintStyle: GoogleFonts.montserrat(
            //             color: Color(0xFF6F6F70),
            //             fontSize: 12.sp,
            //             fontWeight: FontWeight.w500,
            //           ),
            //           prefix: SizedBox(
            //             width: 16.w,
            //           ),
            //         ),
            //       ),
            //     )),
            //-----------\\
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              child: Container(
                width: 376,
                height: 89,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        'From',
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
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 16.52,
                              top: 16,
                              child: Container(
                                width: 63.48,
                                height: 17,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 28.48,
                                      top: 0,
                                      child: Text(
                                        'Date',
                                        style: TextStyle(
                                          color: Color(0xFF818181),
                                          fontSize: 14,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 16,
                                        height: 16,
                                        padding: const EdgeInsets.all(0.57),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 14.86,
                                              height: 14.86,
                                              child: Stack(),
                                            ),
                                          ],
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
                    ),
                    Positioned(
                      left: 196,
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
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 16,
                              top: 16,
                              child: Container(
                                width: 64,
                                height: 17,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 28,
                                      top: 0,
                                      child: Text(
                                        'Time',
                                        style: TextStyle(
                                          color: Color(0xFF818181),
                                          fontSize: 14,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 16,
                                        height: 16,
                                        padding: const EdgeInsets.all(0.57),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 14.86,
                                              height: 14.86,
                                              child: Stack(),
                                            ),
                                          ],
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
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              child: Container(
                width: 376,
                height: 89,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        'Until',
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
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 16.52,
                              top: 16,
                              child: Container(
                                width: 63.48,
                                height: 17,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 28.48,
                                      top: 0,
                                      child: Text(
                                        'Date',
                                        style: TextStyle(
                                          color: Color(0xFF818181),
                                          fontSize: 14,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 16,
                                        height: 16,
                                        padding: const EdgeInsets.all(0.57),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 14.86,
                                              height: 14.86,
                                              child: Stack(),
                                            ),
                                          ],
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
                    ),
                    Positioned(
                      left: 196,
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
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 16,
                              top: 16,
                              child: Container(
                                width: 64,
                                height: 17,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 28,
                                      top: 0,
                                      child: Text(
                                        'Time',
                                        style: TextStyle(
                                          color: Color(0xFF818181),
                                          fontSize: 14,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 16,
                                        height: 16,
                                        padding: const EdgeInsets.all(0.57),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 14.86,
                                              height: 14.86,
                                              child: Stack(),
                                            ),
                                          ],
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
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                width: 376,
                height: 73,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        'Advanced settings',
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
                        width: 376,
                        height: 32,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 28,
                              top: 8,
                              child: Text(
                                'Repeat on',
                                style: TextStyle(
                                  color: Color(0xFFFEFEFE),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 376,
                                height: 32,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 194,
                                      top: 8,
                                      child: Text(
                                        'Ends on',
                                        style: TextStyle(
                                          color: Color(0xFFFEFEFE),
                                          fontSize: 12,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 252,
                                      top: 0,
                                      child: Container(
                                        width: 124,
                                        height: 32,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 124,
                                                height: 32,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFF282828),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 12,
                                              top: 9,
                                              child: Text(
                                                '17 / 08 / 2024',
                                                style: TextStyle(
                                                  color: Color(0xFFFEFEFE),
                                                  fontSize: 12,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 103.09,
                                              top: 10,
                                              child: Container(width: 12, height: 12, child: Stack()),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 99,
                                      top: 0,
                                      child: Container(
                                        width: 82,
                                        height: 32,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 82,
                                                height: 32,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFF282828),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 12,
                                              top: 9,
                                              child: Text(
                                                'Days',
                                                style: TextStyle(
                                                  color: Color(0xFFFEFEFE),
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
                                    Positioned(
                                      left: 0,
                                      top: 6,
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFF282828),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 3,
                                              top: 3,
                                              child: Container(
                                                width: 14,
                                                height: 14,
                                                padding: const EdgeInsets.symmetric(horizontal: 0.50, vertical: 1.55),
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [

                                                  ],
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 100.h,)

          ],
        ),
      ),
    );
  }
}
