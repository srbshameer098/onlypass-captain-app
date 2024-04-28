import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: 0.h,
                    child: Image.asset(
                      'assets/images/imgLog.png',
                      width: 430.w,
                      height: 880.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 86.h,
                    child: Image.asset(
                      'assets/images/captianLogo.png',
                      alignment: Alignment.center,
                      width: 143.w,
                      height: 164.80.h,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(29.w),
              height: 343.h,
              width: double.infinity.w,
              color: Colors.grey[900],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter OTP received',
                    style: GoogleFonts.montserrat(
                      color: const Color(0xFFE4E4E4),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 82.w,
                          height: 55.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF282828),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.r)),
                          ),
                        ),
                        Container(
                          width: 82.w,
                          height: 55.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF282828),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.r)),
                          ),
                        ),
                        Container(
                          width: 82.w,
                          height: 55.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF282828),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.r)),
                          ),
                        ),
                        Container(
                          width: 82.w,
                          height: 55.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF282828),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.r)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 24.h),
                    child: Container(
                      width: 376.w,
                      height: 48.h,
                      decoration: ShapeDecoration(
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.r)),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Continue',
                              style: GoogleFonts.montserrat(
                                color: const Color(0xFF191919),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            const Icon(
                              Icons.east_rounded,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
